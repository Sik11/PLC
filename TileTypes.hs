--Author: Julian Rathke, 2018 
--Provides an implementation of a type checker for the \Toy language from the lecture notes.
module TileTypes where
import TileGrammar



--Data structures as defined in ToyGrammar:

--data TileType = TyInt | TyAxis | TyTile | TyBlank | TyCell TileType | TyFun TileType TileType

--type Environment = [ (String,Expr) ]

--  data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr | TmCell Expr | TmBigCell Expr | TmComma Expr Expr
--            | TmReflect Expr Expr 
--            | TmRotate Expr Expr
--            | TmScale Expr Expr
--            | TmSubtile Expr Expr Expr
--            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
--            | TmVar String | TmLet String TileType Expr Expr
--            | TmApp Expr Expr 
--            | Cl String TileType Expr Environment

type TypeEnvironment = [ (String,TileType) ]


getBinding :: String -> TypeEnvironment -> TileType
getBinding x [] = error "Variable binding not found"
getBinding x ((y,t):tenv) | x == y  = t
                          | otherwise = getBinding x tenv


addBinding :: String -> TileType -> TypeEnvironment -> TypeEnvironment
addBinding x t tenv = (x,t):tenv


typeOf :: TypeEnvironment -> Expr -> TileType
typeOf tenv (TmInt _ )  = TyInt

typeOf tenv TmX = TyAxis

typeOf tenv TmY = TyAxis

typeOf tenv (TmCell e1) = TyCell t1
   where t1 = typeOf tenv e1

typeOf tenv (TmComma e1 e2) = TyComma t1 t2
   where (t1,t2) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (TmTile e1 (TmCell e2)) | (TyInt,TyCell t1) == (typeOf tenv e1,typeOf tenv (TmCell e2)) = TyTile
   where t1 = typeOf tenv e2

typeOf tenv (TmBlank e1) | TyInt == typeOf tenv e1  = TyBlank

typeOf tenv (TmReflect e1 e2) | (TyAxis,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmRotate e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmScale e1 e2) | (TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmSubtile e1 e2 e3) | (TyInt,TyInt,TyTile) == (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3) = TyTile

typeOf tenv (TmCombine e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmAnd e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmNot e1) | TyTile == typeOf tenv e1 = TyTile

typeOf tenv (TmOr e1 e2) | (TyTile,TyTile) == (typeOf tenv e1, typeOf tenv e2) = TyTile

typeOf tenv (TmVar x) = getBinding x tenv

typeOf tenv (TmLambda x t e) = TyFun t u
  where u = typeOf (addBinding x t tenv) e

typeOf tenv (TmApp e1 e2) | t1 == t3 = t2
  where ((t1,t2),t3) = (checkFun (typeOf tenv e1), typeOf tenv e2)
        checkFun (TyFun t1 t2) = (t1,t2)
        checkFun _ = error "Type Error"

typeOf tenv (TmLet x t e1 e2) | t == t1 = typeOf (addBinding x t tenv) e2
  where t1 = typeOf tenv e1

typeOf tenv _ = error "Type Error"

-- Function for printing the results of the TypeCheck
unparseType :: TileType -> String
unparseType TyInt = "Int"
unparseType TyAxis = "Axis"
unparseType TyTile = "Tile"
unparseType TyBlank = "Blank Tile"
unparseType (TyCell t1) = "Cell: [" ++ unparseType t1 ++ "]"
unparseType (TyFun t1 t2) = unparseType t1 ++ " -> " ++ unparseType t2
unparseType (TyComma t1 t2) = unparseType t1 ++ "," ++ unparseType t2

