# Koan 8

## The Task

Read in the imdb movie review dataset provided with TensorFlow
via the `tf.keras.datasets.imdb` interface.
Build an RNN (recurrent neural network) model to classify reviews as either
positive or negative, and test your model's accuracy on
the 25k test reviews that come with the data set.

## Retrieving the data

Here is sample code that retrieves the data for you:


	from tensorflow import keras

	imdb = keras.datasets.imdb

	(X_train, y_train), (X_test, y_test) = imdb.load_data(num_words=10000)

The `X_{train,test}` objects are arrays of lists of numbers. Each
list of numbers is a list of indexed words from a movie review.

More details on this dataset can be found by considering
[this example code from TensorFlow](https://github.com/tensorflow/models/blob/master/samples/core/tutorials/keras/basic_text_classification.ipynb),
or by reviewing
[the docs for `tf.keras.datasets.imdb`](https://www.tensorflow.org/api_docs/python/tf/keras/datasets/imdb).
