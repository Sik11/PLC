{-# OPTIONS_GHC -w #-}
module TileGrammar where 
import TileTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (TileToken)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,263) ([64512,51455,2048,0,0,0,57344,18431,6,0,32768,8191,25,16383,50,32766,100,65532,200,65528,401,65520,803,65504,1607,65472,3215,0,256,65280,12863,0,1024,0,2048,63488,37375,1,0,0,0,49152,36863,13,0,16,0,32,32766,100,65532,200,65528,401,50992,801,65504,1607,65472,3215,65408,6431,65280,12863,58880,25663,64512,51455,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65532,232,0,0,0,4,0,8,0,0,60,0,120,0,65024,25727,64512,55551,1024,8192,0,0,0,0,0,0,0,0,32768,0,61444,0,0,0,2,65528,401,65520,803,0,2,0,4,65408,6431,0,0,65024,26239,64512,51455,63488,37119,1,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Axis","Int","Tile","Blank","arr","x","y","tile","blank","reflect","rotate","scale","AND","NOT","OR","subtile","combine","lam","let","':'","'='","in","'('","')'","','","int","var","%eof"]
        bit_start = st Prelude.* 33
        bit_end = (st Prelude.+ 1) Prelude.* 33
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..32]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_2
action_0 (12) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (15) = happyShift action_7
action_0 (16) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (18) = happyShift action_10
action_0 (19) = happyShift action_11
action_0 (20) = happyShift action_12
action_0 (21) = happyShift action_13
action_0 (22) = happyShift action_14
action_0 (23) = happyShift action_15
action_0 (24) = happyShift action_16
action_0 (28) = happyShift action_17
action_0 (31) = happyShift action_18
action_0 (32) = happyShift action_19
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (11) = happyShift action_2
action_3 (12) = happyShift action_4
action_3 (13) = happyShift action_5
action_3 (14) = happyShift action_6
action_3 (15) = happyShift action_7
action_3 (16) = happyShift action_8
action_3 (17) = happyShift action_9
action_3 (18) = happyShift action_10
action_3 (19) = happyShift action_11
action_3 (20) = happyShift action_12
action_3 (21) = happyShift action_13
action_3 (22) = happyShift action_14
action_3 (23) = happyShift action_15
action_3 (24) = happyShift action_16
action_3 (28) = happyShift action_17
action_3 (31) = happyShift action_18
action_3 (32) = happyShift action_19
action_3 (33) = happyAccept
action_3 (4) = happyGoto action_33
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (11) = happyShift action_2
action_5 (12) = happyShift action_4
action_5 (13) = happyShift action_5
action_5 (14) = happyShift action_6
action_5 (15) = happyShift action_7
action_5 (16) = happyShift action_8
action_5 (17) = happyShift action_9
action_5 (18) = happyShift action_10
action_5 (19) = happyShift action_11
action_5 (20) = happyShift action_12
action_5 (21) = happyShift action_13
action_5 (22) = happyShift action_14
action_5 (23) = happyShift action_15
action_5 (24) = happyShift action_16
action_5 (28) = happyShift action_17
action_5 (31) = happyShift action_18
action_5 (32) = happyShift action_19
action_5 (4) = happyGoto action_32
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (11) = happyShift action_2
action_6 (12) = happyShift action_4
action_6 (13) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (15) = happyShift action_7
action_6 (16) = happyShift action_8
action_6 (17) = happyShift action_9
action_6 (18) = happyShift action_10
action_6 (19) = happyShift action_11
action_6 (20) = happyShift action_12
action_6 (21) = happyShift action_13
action_6 (22) = happyShift action_14
action_6 (23) = happyShift action_15
action_6 (24) = happyShift action_16
action_6 (28) = happyShift action_17
action_6 (31) = happyShift action_18
action_6 (32) = happyShift action_19
action_6 (4) = happyGoto action_31
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (11) = happyShift action_2
action_7 (12) = happyShift action_4
action_7 (13) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (15) = happyShift action_7
action_7 (16) = happyShift action_8
action_7 (17) = happyShift action_9
action_7 (18) = happyShift action_10
action_7 (19) = happyShift action_11
action_7 (20) = happyShift action_12
action_7 (21) = happyShift action_13
action_7 (22) = happyShift action_14
action_7 (23) = happyShift action_15
action_7 (24) = happyShift action_16
action_7 (28) = happyShift action_17
action_7 (31) = happyShift action_18
action_7 (32) = happyShift action_19
action_7 (4) = happyGoto action_30
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (11) = happyShift action_2
action_8 (12) = happyShift action_4
action_8 (13) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (15) = happyShift action_7
action_8 (16) = happyShift action_8
action_8 (17) = happyShift action_9
action_8 (18) = happyShift action_10
action_8 (19) = happyShift action_11
action_8 (20) = happyShift action_12
action_8 (21) = happyShift action_13
action_8 (22) = happyShift action_14
action_8 (23) = happyShift action_15
action_8 (24) = happyShift action_16
action_8 (28) = happyShift action_17
action_8 (31) = happyShift action_18
action_8 (32) = happyShift action_19
action_8 (4) = happyGoto action_29
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (11) = happyShift action_2
action_9 (12) = happyShift action_4
action_9 (13) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (15) = happyShift action_7
action_9 (16) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (18) = happyShift action_10
action_9 (19) = happyShift action_11
action_9 (20) = happyShift action_12
action_9 (21) = happyShift action_13
action_9 (22) = happyShift action_14
action_9 (23) = happyShift action_15
action_9 (24) = happyShift action_16
action_9 (28) = happyShift action_17
action_9 (31) = happyShift action_18
action_9 (32) = happyShift action_19
action_9 (4) = happyGoto action_28
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_2
action_10 (12) = happyShift action_4
action_10 (13) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (15) = happyShift action_7
action_10 (16) = happyShift action_8
action_10 (17) = happyShift action_9
action_10 (18) = happyShift action_10
action_10 (19) = happyShift action_11
action_10 (20) = happyShift action_12
action_10 (21) = happyShift action_13
action_10 (22) = happyShift action_14
action_10 (23) = happyShift action_15
action_10 (24) = happyShift action_16
action_10 (28) = happyShift action_17
action_10 (31) = happyShift action_18
action_10 (32) = happyShift action_19
action_10 (4) = happyGoto action_27
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (11) = happyShift action_2
action_11 (12) = happyShift action_4
action_11 (13) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_7
action_11 (16) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (18) = happyShift action_10
action_11 (19) = happyShift action_11
action_11 (20) = happyShift action_12
action_11 (21) = happyShift action_13
action_11 (22) = happyShift action_14
action_11 (23) = happyShift action_15
action_11 (24) = happyShift action_16
action_11 (28) = happyShift action_17
action_11 (31) = happyShift action_18
action_11 (32) = happyShift action_19
action_11 (4) = happyGoto action_26
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_2
action_12 (12) = happyShift action_4
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (15) = happyShift action_7
action_12 (16) = happyShift action_8
action_12 (17) = happyShift action_9
action_12 (18) = happyShift action_10
action_12 (19) = happyShift action_11
action_12 (20) = happyShift action_12
action_12 (21) = happyShift action_13
action_12 (22) = happyShift action_14
action_12 (23) = happyShift action_15
action_12 (24) = happyShift action_16
action_12 (28) = happyShift action_17
action_12 (31) = happyShift action_18
action_12 (32) = happyShift action_19
action_12 (4) = happyGoto action_25
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (28) = happyShift action_24
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_2
action_14 (12) = happyShift action_4
action_14 (13) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (15) = happyShift action_7
action_14 (16) = happyShift action_8
action_14 (17) = happyShift action_9
action_14 (18) = happyShift action_10
action_14 (19) = happyShift action_11
action_14 (20) = happyShift action_12
action_14 (21) = happyShift action_13
action_14 (22) = happyShift action_14
action_14 (23) = happyShift action_15
action_14 (24) = happyShift action_16
action_14 (28) = happyShift action_17
action_14 (31) = happyShift action_18
action_14 (32) = happyShift action_19
action_14 (4) = happyGoto action_23
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (28) = happyShift action_22
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (28) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_2
action_17 (12) = happyShift action_4
action_17 (13) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (15) = happyShift action_7
action_17 (16) = happyShift action_8
action_17 (17) = happyShift action_9
action_17 (18) = happyShift action_10
action_17 (19) = happyShift action_11
action_17 (20) = happyShift action_12
action_17 (21) = happyShift action_13
action_17 (22) = happyShift action_14
action_17 (23) = happyShift action_15
action_17 (24) = happyShift action_16
action_17 (28) = happyShift action_17
action_17 (31) = happyShift action_18
action_17 (32) = happyShift action_19
action_17 (4) = happyGoto action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_3

action_19 _ = happyReduce_4

action_20 (11) = happyShift action_2
action_20 (12) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_7
action_20 (16) = happyShift action_8
action_20 (17) = happyShift action_9
action_20 (18) = happyShift action_10
action_20 (19) = happyShift action_11
action_20 (20) = happyShift action_12
action_20 (21) = happyShift action_13
action_20 (22) = happyShift action_14
action_20 (23) = happyShift action_15
action_20 (24) = happyShift action_16
action_20 (28) = happyShift action_17
action_20 (29) = happyShift action_44
action_20 (31) = happyShift action_18
action_20 (32) = happyShift action_19
action_20 (4) = happyGoto action_33
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (32) = happyShift action_43
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (32) = happyShift action_42
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (11) = happyShift action_2
action_23 (12) = happyShift action_4
action_23 (13) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (15) = happyShift action_7
action_23 (16) = happyShift action_8
action_23 (17) = happyShift action_9
action_23 (18) = happyShift action_10
action_23 (19) = happyShift action_11
action_23 (20) = happyShift action_12
action_23 (21) = happyShift action_13
action_23 (22) = happyShift action_14
action_23 (23) = happyShift action_15
action_23 (24) = happyShift action_16
action_23 (28) = happyShift action_17
action_23 (31) = happyShift action_18
action_23 (32) = happyShift action_19
action_23 (4) = happyGoto action_41
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_2
action_24 (12) = happyShift action_4
action_24 (13) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (15) = happyShift action_7
action_24 (16) = happyShift action_8
action_24 (17) = happyShift action_9
action_24 (18) = happyShift action_10
action_24 (19) = happyShift action_11
action_24 (20) = happyShift action_12
action_24 (21) = happyShift action_13
action_24 (22) = happyShift action_14
action_24 (23) = happyShift action_15
action_24 (24) = happyShift action_16
action_24 (28) = happyShift action_17
action_24 (31) = happyShift action_18
action_24 (32) = happyShift action_19
action_24 (4) = happyGoto action_40
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_2
action_25 (12) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (15) = happyShift action_7
action_25 (16) = happyShift action_8
action_25 (17) = happyShift action_9
action_25 (18) = happyShift action_10
action_25 (19) = happyShift action_11
action_25 (20) = happyShift action_12
action_25 (21) = happyShift action_13
action_25 (22) = happyShift action_14
action_25 (23) = happyShift action_15
action_25 (24) = happyShift action_16
action_25 (28) = happyShift action_17
action_25 (31) = happyShift action_18
action_25 (32) = happyShift action_19
action_25 (4) = happyGoto action_39
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_2
action_26 (12) = happyShift action_4
action_26 (15) = happyShift action_7
action_26 (16) = happyShift action_8
action_26 (17) = happyShift action_9
action_26 (21) = happyShift action_13
action_26 (22) = happyShift action_14
action_26 (23) = happyShift action_15
action_26 (28) = happyShift action_17
action_26 (31) = happyShift action_18
action_26 (32) = happyShift action_19
action_26 (4) = happyGoto action_33
action_26 _ = happyReduce_11

action_27 (11) = happyShift action_2
action_27 (12) = happyShift action_4
action_27 (13) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (15) = happyShift action_7
action_27 (16) = happyShift action_8
action_27 (17) = happyShift action_9
action_27 (18) = happyShift action_10
action_27 (19) = happyShift action_11
action_27 (20) = happyShift action_12
action_27 (21) = happyShift action_13
action_27 (22) = happyShift action_14
action_27 (23) = happyShift action_15
action_27 (24) = happyShift action_16
action_27 (28) = happyShift action_17
action_27 (31) = happyShift action_18
action_27 (32) = happyShift action_19
action_27 (4) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_2
action_28 (12) = happyShift action_4
action_28 (13) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (15) = happyShift action_7
action_28 (16) = happyShift action_8
action_28 (17) = happyShift action_9
action_28 (18) = happyShift action_10
action_28 (19) = happyShift action_11
action_28 (20) = happyShift action_12
action_28 (21) = happyShift action_13
action_28 (22) = happyShift action_14
action_28 (23) = happyShift action_15
action_28 (24) = happyShift action_16
action_28 (28) = happyShift action_17
action_28 (31) = happyShift action_18
action_28 (32) = happyShift action_19
action_28 (4) = happyGoto action_37
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_2
action_29 (12) = happyShift action_4
action_29 (13) = happyShift action_5
action_29 (14) = happyShift action_6
action_29 (15) = happyShift action_7
action_29 (16) = happyShift action_8
action_29 (17) = happyShift action_9
action_29 (18) = happyShift action_10
action_29 (19) = happyShift action_11
action_29 (20) = happyShift action_12
action_29 (21) = happyShift action_13
action_29 (22) = happyShift action_14
action_29 (23) = happyShift action_15
action_29 (24) = happyShift action_16
action_29 (28) = happyShift action_17
action_29 (31) = happyShift action_18
action_29 (32) = happyShift action_19
action_29 (4) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_2
action_30 (12) = happyShift action_4
action_30 (13) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (15) = happyShift action_7
action_30 (16) = happyShift action_8
action_30 (17) = happyShift action_9
action_30 (18) = happyShift action_10
action_30 (19) = happyShift action_11
action_30 (20) = happyShift action_12
action_30 (21) = happyShift action_13
action_30 (22) = happyShift action_14
action_30 (23) = happyShift action_15
action_30 (24) = happyShift action_16
action_30 (28) = happyShift action_17
action_30 (31) = happyShift action_18
action_30 (32) = happyShift action_19
action_30 (4) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_2
action_31 (12) = happyShift action_4
action_31 (15) = happyShift action_7
action_31 (16) = happyShift action_8
action_31 (17) = happyShift action_9
action_31 (18) = happyShift action_10
action_31 (19) = happyShift action_11
action_31 (20) = happyShift action_12
action_31 (21) = happyShift action_13
action_31 (22) = happyShift action_14
action_31 (23) = happyShift action_15
action_31 (28) = happyShift action_17
action_31 (31) = happyShift action_18
action_31 (32) = happyShift action_19
action_31 (4) = happyGoto action_33
action_31 _ = happyReduce_6

action_32 (11) = happyShift action_2
action_32 (12) = happyShift action_4
action_32 (13) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (15) = happyShift action_7
action_32 (16) = happyShift action_8
action_32 (17) = happyShift action_9
action_32 (18) = happyShift action_10
action_32 (19) = happyShift action_11
action_32 (20) = happyShift action_12
action_32 (21) = happyShift action_13
action_32 (22) = happyShift action_14
action_32 (23) = happyShift action_15
action_32 (24) = happyShift action_16
action_32 (28) = happyShift action_17
action_32 (31) = happyShift action_18
action_32 (32) = happyShift action_19
action_32 (4) = happyGoto action_34
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (4) = happyGoto action_33
action_33 _ = happyReduce_17

action_34 (27) = happyReduce_5
action_34 (29) = happyReduce_5
action_34 (30) = happyReduce_5
action_34 (33) = happyReduce_5
action_34 (4) = happyGoto action_33
action_34 _ = happyReduce_17

action_35 (27) = happyReduce_7
action_35 (29) = happyReduce_7
action_35 (30) = happyReduce_7
action_35 (33) = happyReduce_7
action_35 (4) = happyGoto action_33
action_35 _ = happyReduce_17

action_36 (27) = happyReduce_8
action_36 (29) = happyReduce_8
action_36 (30) = happyReduce_8
action_36 (33) = happyReduce_8
action_36 (4) = happyGoto action_33
action_36 _ = happyReduce_17

action_37 (27) = happyReduce_9
action_37 (29) = happyReduce_9
action_37 (30) = happyReduce_9
action_37 (33) = happyReduce_9
action_37 (4) = happyGoto action_33
action_37 _ = happyReduce_17

action_38 (27) = happyReduce_10
action_38 (29) = happyReduce_10
action_38 (30) = happyReduce_10
action_38 (33) = happyReduce_10
action_38 (4) = happyGoto action_33
action_38 _ = happyReduce_17

action_39 (27) = happyReduce_12
action_39 (29) = happyReduce_12
action_39 (30) = happyReduce_12
action_39 (33) = happyReduce_12
action_39 (4) = happyGoto action_33
action_39 _ = happyReduce_17

action_40 (11) = happyShift action_2
action_40 (12) = happyShift action_4
action_40 (13) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (15) = happyShift action_7
action_40 (16) = happyShift action_8
action_40 (17) = happyShift action_9
action_40 (18) = happyShift action_10
action_40 (19) = happyShift action_11
action_40 (20) = happyShift action_12
action_40 (21) = happyShift action_13
action_40 (22) = happyShift action_14
action_40 (23) = happyShift action_15
action_40 (24) = happyShift action_16
action_40 (28) = happyShift action_17
action_40 (30) = happyShift action_47
action_40 (31) = happyShift action_18
action_40 (32) = happyShift action_19
action_40 (4) = happyGoto action_33
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (27) = happyReduce_14
action_41 (29) = happyReduce_14
action_41 (30) = happyReduce_14
action_41 (33) = happyReduce_14
action_41 (4) = happyGoto action_33
action_41 _ = happyReduce_17

action_42 (25) = happyShift action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (25) = happyShift action_45
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_18

action_45 (6) = happyShift action_50
action_45 (7) = happyShift action_51
action_45 (8) = happyShift action_52
action_45 (9) = happyShift action_53
action_45 (5) = happyGoto action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_50
action_46 (7) = happyShift action_51
action_46 (8) = happyShift action_52
action_46 (9) = happyShift action_53
action_46 (5) = happyGoto action_49
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (11) = happyShift action_2
action_47 (12) = happyShift action_4
action_47 (13) = happyShift action_5
action_47 (14) = happyShift action_6
action_47 (15) = happyShift action_7
action_47 (16) = happyShift action_8
action_47 (17) = happyShift action_9
action_47 (18) = happyShift action_10
action_47 (19) = happyShift action_11
action_47 (20) = happyShift action_12
action_47 (21) = happyShift action_13
action_47 (22) = happyShift action_14
action_47 (23) = happyShift action_15
action_47 (24) = happyShift action_16
action_47 (28) = happyShift action_17
action_47 (31) = happyShift action_18
action_47 (32) = happyShift action_19
action_47 (4) = happyGoto action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_2
action_48 (12) = happyShift action_4
action_48 (13) = happyShift action_5
action_48 (14) = happyShift action_6
action_48 (15) = happyShift action_7
action_48 (16) = happyShift action_8
action_48 (17) = happyShift action_9
action_48 (18) = happyShift action_10
action_48 (19) = happyShift action_11
action_48 (20) = happyShift action_12
action_48 (21) = happyShift action_13
action_48 (22) = happyShift action_14
action_48 (23) = happyShift action_15
action_48 (24) = happyShift action_16
action_48 (28) = happyShift action_17
action_48 (29) = happyShift action_58
action_48 (31) = happyShift action_18
action_48 (32) = happyShift action_19
action_48 (4) = happyGoto action_33
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (10) = happyShift action_55
action_49 (29) = happyShift action_57
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_19

action_51 _ = happyReduce_20

action_52 _ = happyReduce_21

action_53 _ = happyReduce_22

action_54 (10) = happyShift action_55
action_54 (29) = happyShift action_56
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_50
action_55 (7) = happyShift action_51
action_55 (8) = happyShift action_52
action_55 (9) = happyShift action_53
action_55 (5) = happyGoto action_62
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (26) = happyShift action_61
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (11) = happyShift action_2
action_57 (12) = happyShift action_4
action_57 (13) = happyShift action_5
action_57 (14) = happyShift action_6
action_57 (15) = happyShift action_7
action_57 (16) = happyShift action_8
action_57 (17) = happyShift action_9
action_57 (18) = happyShift action_10
action_57 (19) = happyShift action_11
action_57 (20) = happyShift action_12
action_57 (21) = happyShift action_13
action_57 (22) = happyShift action_14
action_57 (23) = happyShift action_15
action_57 (24) = happyShift action_16
action_57 (28) = happyShift action_17
action_57 (31) = happyShift action_18
action_57 (32) = happyShift action_19
action_57 (4) = happyGoto action_60
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (11) = happyShift action_2
action_58 (12) = happyShift action_4
action_58 (13) = happyShift action_5
action_58 (14) = happyShift action_6
action_58 (15) = happyShift action_7
action_58 (16) = happyShift action_8
action_58 (17) = happyShift action_9
action_58 (18) = happyShift action_10
action_58 (19) = happyShift action_11
action_58 (20) = happyShift action_12
action_58 (21) = happyShift action_13
action_58 (22) = happyShift action_14
action_58 (23) = happyShift action_15
action_58 (24) = happyShift action_16
action_58 (28) = happyShift action_17
action_58 (31) = happyShift action_18
action_58 (32) = happyShift action_19
action_58 (4) = happyGoto action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (11) = happyFail []
action_59 (12) = happyFail []
action_59 (23) = happyShift action_15
action_59 (28) = happyFail []
action_59 (31) = happyFail []
action_59 (32) = happyFail []
action_59 (4) = happyGoto action_33
action_59 _ = happyReduce_13

action_60 (11) = happyFail []
action_60 (12) = happyFail []
action_60 (23) = happyShift action_15
action_60 (28) = happyFail []
action_60 (31) = happyFail []
action_60 (32) = happyFail []
action_60 (4) = happyGoto action_33
action_60 _ = happyReduce_15

action_61 (11) = happyShift action_2
action_61 (12) = happyShift action_4
action_61 (13) = happyShift action_5
action_61 (14) = happyShift action_6
action_61 (15) = happyShift action_7
action_61 (16) = happyShift action_8
action_61 (17) = happyShift action_9
action_61 (18) = happyShift action_10
action_61 (19) = happyShift action_11
action_61 (20) = happyShift action_12
action_61 (21) = happyShift action_13
action_61 (22) = happyShift action_14
action_61 (23) = happyShift action_15
action_61 (24) = happyShift action_16
action_61 (28) = happyShift action_17
action_61 (31) = happyShift action_18
action_61 (32) = happyShift action_19
action_61 (4) = happyGoto action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_23

action_63 (11) = happyShift action_2
action_63 (12) = happyShift action_4
action_63 (13) = happyShift action_5
action_63 (14) = happyShift action_6
action_63 (15) = happyShift action_7
action_63 (16) = happyShift action_8
action_63 (17) = happyShift action_9
action_63 (18) = happyShift action_10
action_63 (19) = happyShift action_11
action_63 (20) = happyShift action_12
action_63 (21) = happyShift action_13
action_63 (22) = happyShift action_14
action_63 (23) = happyShift action_15
action_63 (24) = happyShift action_16
action_63 (27) = happyShift action_64
action_63 (28) = happyShift action_17
action_63 (31) = happyShift action_18
action_63 (32) = happyShift action_19
action_63 (4) = happyGoto action_33
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (11) = happyShift action_2
action_64 (12) = happyShift action_4
action_64 (13) = happyShift action_5
action_64 (14) = happyShift action_6
action_64 (15) = happyShift action_7
action_64 (16) = happyShift action_8
action_64 (17) = happyShift action_9
action_64 (18) = happyShift action_10
action_64 (19) = happyShift action_11
action_64 (20) = happyShift action_12
action_64 (21) = happyShift action_13
action_64 (22) = happyShift action_14
action_64 (23) = happyShift action_15
action_64 (24) = happyShift action_16
action_64 (28) = happyShift action_17
action_64 (31) = happyShift action_18
action_64 (32) = happyShift action_19
action_64 (4) = happyGoto action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (11) = happyShift action_2
action_65 (12) = happyShift action_4
action_65 (13) = happyShift action_5
action_65 (14) = happyShift action_6
action_65 (15) = happyShift action_7
action_65 (16) = happyShift action_8
action_65 (17) = happyShift action_9
action_65 (18) = happyShift action_10
action_65 (19) = happyShift action_11
action_65 (20) = happyShift action_12
action_65 (21) = happyShift action_13
action_65 (22) = happyShift action_14
action_65 (23) = happyShift action_15
action_65 (28) = happyShift action_17
action_65 (31) = happyShift action_18
action_65 (32) = happyShift action_19
action_65 (4) = happyGoto action_33
action_65 _ = happyReduce_16

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (TmX
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (TmY
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmTile happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmBlank happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReflect happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmRotate happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmScale happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmAnd happy_var_2 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmNot happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmOr happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 7 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmSubtile happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCombine happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 7 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLambda happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 10 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLet happy_var_3 happy_var_5 happy_var_8 happy_var_10
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (TyAxis
	)

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TyTile
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TyBlank
	)

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeAxis _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenTypeTile _ -> cont 8;
	TokenTypeBlank _ -> cont 9;
	TokenTypeArr _ -> cont 10;
	TokenXAxis _ -> cont 11;
	TokenYAxis _ -> cont 12;
	TokenTile _ -> cont 13;
	TokenBlank _ -> cont 14;
	TokenReflect _ -> cont 15;
	TokenRotate _ -> cont 16;
	TokenScale _ -> cont 17;
	TokenAnd _ -> cont 18;
	TokenNot _ -> cont 19;
	TokenOr _ -> cont 20;
	TokenSubtile _ -> cont 21;
	TokenCombine _ -> cont 22;
	TokenLambda _ -> cont 23;
	TokenLet _ -> cont 24;
	TokenHasType _ -> cont 25;
	TokenEq _ -> cont 26;
	TokenIn _ -> cont 27;
	TokenLParen _ -> cont 28;
	TokenRParen _ -> cont 29;
	TokenComma _ -> cont 30;
	TokenInt _ happy_dollar_dollar -> cont 31;
	TokenVar _ happy_dollar_dollar -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(TileToken)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [TileToken] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data TileType = TyInt | TyAxis | TyTile | TyBlank | TyFun TileType TileType
   deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmX | TmY | TmTile Expr Expr | TmBlank Expr
            | TmReflect Expr Expr 
            | TmRotate Expr Expr
            | TmScale Expr Expr
            | TmSubtile Expr Expr Expr
            | TmCombine Expr Expr
            | TmAnd Expr Expr | TmNot Expr | TmOr Expr Expr
            | TmVar String | TmLet String TileType Expr Expr
            | TmLambda String TileType Expr | TmApp Expr Expr 
            | Cl String TileType Expr Environment
    deriving (Show,Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
