{ 
module TileTokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
  $white+        ; 
  "--".*         ;

  "->"           { tok (\p s -> TokenTypeArr p) }
  \,             { tok (\p s -> TokenComma p) }
  \.             { tok (\p s -> TokenDot p) }
  $digit+        { tok (\p s -> TokenInt p (read s)) }
  x              { tok (\p s -> TokenXAxis p) }
  y              { tok (\p s -> TokenYAxis p) }
  tile           { tok (\p s -> TokenTile p) }
  blank          { tok (\p s -> TokenBlank p) }
  true           { tok (\p s -> TokenTrue p) }
  false          { tok (\p s -> TokenFalse p) }
  \<             { tok (\p s -> TokenLessThan p) }
  \>             { tok (\p s -> TokenMoreThan p) }
  \<=            { tok (\p s -> TokenLessThanEqual p) }
  \>=            { tok (\p s -> TokenMoreThanEqual p) }
  \+             { tok (\p s -> TokenPlus p) }
  \-             { tok (\p s -> TokenMinus p) }
  if             { tok (\p s -> TokenIf p) }
  then           { tok (\p s -> TokenThen p) }
  else           { tok (\p s -> TokenElse p) }

  reflect        { tok (\p s -> TokenReflect p) }
  rotate         { tok (\p s -> TokenRotate p) }
  scale          { tok (\p s -> TokenScale p) }
  NOT            { tok (\p s -> TokenNot p) }
  AND            { tok (\p s -> TokenAnd p) }
  OR             { tok (\p s -> TokenOr p) }
  subtile        { tok (\p s -> TokenSubtile p) }
  combine        { tok (\p s -> TokenCombine p) }
  combineH       { tok (\p s -> TokenCombineH p) }
  combineV       { tok (\p s -> TokenCombineV p) }
  repeatH        { tok (\p s -> TokenRepeatH p) }
  repeatV        { tok (\p s -> TokenRepeatV p) }
  replace        { tok (\p s -> TokenReplace p) }

  Int            { tok (\p s -> TokenTypeInt p) }
  Tile           { tok (\p s -> TokenTypeTile p) }
  Blank          { tok (\p s -> TokenTypeBlank p) }
  Cell           { tok (\p s -> TokenTypeCell p) }
  Bool           { tok (\p s -> TokenTypeBool p)} 
  Axis           { tok (\p s -> TokenTypeAxis p) }

  length         { tok (\p s -> TokenLength p) }
  \:             { tok (\p s -> TokenHasType p) }
  let            { tok (\p s -> TokenLet p ) }
  =              { tok (\p s -> TokenEq p ) }
  in             { tok (\p s -> TokenIn p ) }

  \\             { tok (\p s -> TokenLambda p) }
  \(             { tok (\p s -> TokenLParen p) }
  \)             { tok (\p s -> TokenRParen p) }
  \[             { tok (\p s -> TokenLSquBracket p) }
  \]             { tok (\p s -> TokenRSquBracket p) }
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) } 

{ 
-- Each action has type :: AlexPosn -> String -> MDLToken 

-- Helper function
tok f p s = f p s

-- The token type: 
data TileToken = 
  TokenTypeAxis AlexPosn         |
  TokenXAxis AlexPosn            |
  TokenYAxis AlexPosn            |
  TokenTypeArr  AlexPosn         |
  TokenTile AlexPosn             |
  TokenBlank AlexPosn            |
  TokenTrue AlexPosn             |
  TokenFalse AlexPosn            |
  TokenLessThan AlexPosn         |
  TokenMoreThan AlexPosn         |
  TokenLessThanEqual AlexPosn    |
  TokenMoreThanEqual AlexPosn    |
  TokenPlus AlexPosn             |
  TokenMinus AlexPosn            |
  TokenIf AlexPosn               |
  TokenThen AlexPosn             |
  TokenElse AlexPosn             |

  TokenReflect AlexPosn          |
  TokenRotate AlexPosn           |
  TokenScale AlexPosn            |
  TokenAnd AlexPosn              |
  TokenNot AlexPosn              |
  TokenOr AlexPosn               |
  TokenSubtile AlexPosn          |
  TokenCombine AlexPosn          |
  TokenCombineH AlexPosn         |
  TokenCombineV AlexPosn         |

  TokenRepeatH AlexPosn          |
  TokenRepeatV AlexPosn          |
  TokenReplace AlexPosn          |

  TokenTypeBool AlexPosn         | 
  TokenTypeInt  AlexPosn         | 
  TokenTypeTile AlexPosn         |
  TokenTypeBlank AlexPosn        |
  TokenInt AlexPosn Int          | 
  TokenTypeCell AlexPosn         |

  TokenLength AlexPosn           |
  TokenLambda AlexPosn           |
  TokenHasType AlexPosn          |
  TokenLet AlexPosn              |
  TokenEq AlexPosn               |
  TokenIn AlexPosn               |
  TokenLParen AlexPosn           |
  TokenRParen AlexPosn           |
  TokenLSquBracket AlexPosn      |
  TokenRSquBracket AlexPosn      |
  TokenComma AlexPosn            |
  TokenDot AlexPosn              |
  TokenVar AlexPosn String
  deriving (Eq,Show) 


tokenPosn :: TileToken -> String
tokenPosn (TokenTypeAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenXAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenYAxis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeArr  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBlank (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThan  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMoreThan  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessThanEqual  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMoreThanEqual  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenReflect (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRotate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenScale (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSubtile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCombine (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCombineH (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCombineV (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRepeatH (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRepeatV (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReplace (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeTile  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeBlank (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeCell (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLambda (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenHasType (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLSquBracket (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRSquBracket (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

}