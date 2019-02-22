module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds =
  case planet of
    Mercury -> applyFactor 0.2408467
    Venus -> applyFactor 0.61519726
    Earth -> applyFactor 1
    Mars -> applyFactor 1.8808158
    Jupiter ->applyFactor 11.862615
    Saturn -> applyFactor 29.447498
    Uranus -> applyFactor 84.016846
    Neptune -> applyFactor 164.79132
    where earthSeconds = 31557600
          applyFactor factor = (seconds / earthSeconds) / factor
