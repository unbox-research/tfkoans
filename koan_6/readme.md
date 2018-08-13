# Koan 6

*A basic CNN (convolutional neural network)*

## The Task

Read in the MNIST dataset of hand-written digit images.
This can be done via TensorFlow's
`tf.keras.datasets.mnist` interface.
Build a multi-class CNN model to predict which digit was
written in the given input image. Test your model's accuracy
on MNIST's test set.

## Retrieving the data

Here is sample code that retrieves the data for you:

```
from tensorflow import keras

mnist = keras.datasets.mnist

(X_train, y_train), (X_test, y_test) = mnist.load_data()
```

The `X_train` array contains 60,000 black & white images of
size 28x28.
The data type is `uint8`; each pixel value
is an integer in the range 0 (black, background) to 255 (white).

Depending on how you create your loss function, you may also
want to convert the labels (`y_train` and `y_test`) to one-hot
vectors. There are multiple ways to do that; here's one:

```
# This is a slightly "clever" way to do it; it works
# because each index in the `y_train` slice on the right
# effectively pulls out the corresponding row from
# np.eye(). (np.eye(n) returns the n x n identity matrix.)

y_train_one_hot = np.eye(10)[y_train]
```

## References

* [Keras docs on its MNIST dataset](https://keras.io/datasets/#mnist-database-of-handwritten-digits)
* [cs231n notes on CNNs](http://cs231n.github.io/convolutional-networks/)
