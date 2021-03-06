
---------------------------------------
-- Stochastic gradient descent learning
-- Author: Jens Egholm <jensegholm@protonmail.com>
-- Heavily inspired by Martin Elsmans implementation:
--    https://github.com/melsman/neural-networks-and-deep-learning
-- License: GPLv3
---------------------------------------

import "neuralnetwork"

module Predict (N: NeuralNetwork) = {

  let training_test [n] [m] (x: [n][m]N.t) (y: [n]i32) : N.t =
    let split = i32.f64(f64.floor(f64.i32(n) * 0.8))
    let training_x = x[0:split]
    let training_y = y[0:split]
    let test_x = x[split:n]
    let test_y = y[split:n]
    in N.run (training_x, training_y, test_x, test_y)

}
