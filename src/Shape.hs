{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE TypeFamilies              #-}

module Shape (draw) where

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
import Data.Colour.SRGB

draw :: IO ()
draw = mainWith
  $ nhos 30 # showOrigin

nhos :: Double -> Diagram B
nhos h = polygon ( with
  & polyType .~ PolySides
       [ 90 @@ deg, 60 @@ deg, 120 @@ deg ]
       [ h, h, 10  ]
  & polyOrient .~ OrientV
   ) # closeLine # strokeLoop # snugX (-1) # reflectX
