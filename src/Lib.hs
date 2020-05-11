module Lib
    ( runGame
    )
where

import           Graphics.Gloss
import           Graphics.Gloss.Data.Color

import           Game
import           Logic
import           Render

window = InWindow "Functional" (screenWidth, screenHeight) (100, 100)

backgroundColor = black

runGame :: IO ()
runGame = play window
               backgroundColor
               30
               initialGame
               gameAsPicture
               transformGame
               (const id)
