# Basics of Data Science

## **Nomenclature & Vocabulary**
|Term|Desctiption|
|:-|:-|
[Overfitting](#overfitting-and-underfitting)|This is when your model has great performance when predicting training data, but not so much when predicting testing data
[Underfitting](#overfitting-and-underfitting)|This is when your model has poor performance when predicting both the training and testing data
[Supervised](#supervised-and-unsupervised-learning)|
[Unsupervised](#supervised-and-unsupervised-learning)|
Induction|The process of learning (or optimizing) a target function based on training data to be used to create new predictions.
Generalization|The level to which the concepts--inductively--learned by a model apply to specific examples not seen by the model when it was learning.
[Bias](#bias-and-variance)|A phenomenon that skews the result of an algorithm towards or against an idea
[Variance](#bias-and-variance)|Changes in the model when using difference portions of the training data set
[Residuals](#residuals)|The difference between an observed value and a predicted value

[Google ML Glossary](https://developers.google.com/machine-learning/glossary)

## [**Overfitting and Underfitting**](https://machinelearningmastery.com/overfitting-and-underfitting-with-machine-learning-algorithms/)
While both over and underfitting indicate poor model performance, overfitting is the most common problem with model optimization. Two things you can do to mitigate or monitor your model are to use a resampling technique to estimate model accuracy or use a portion of the training set as a validation set.

[_Measuring Over or Underfitting_](https://towardsdatascience.com/overfitting-vs-underfitting-a-complete-example-d05dd7e19765)


## **Supervised and Unsupervised Learning**

## [**Bias and Variance**](https://www.bmc.com/blogs/bias-variance-machine-learning/)
While both a high bias or variance will cause poor performance in a model, its important to know the difference.

![image](images/Screenshot%202022-12-11%20at%202.50.00%20AM.png)

Signs of high bias:
* Failure to capture data trends
* Underfitting
* Overly simplified
* High error rate

![image](images/Screenshot%202022-12-11%20at%202.54.23%20AM.png)

Signs of high variance:
* Noise in data set
* Overfitting
* Overly complex
* Forcing data points together

You may also note that bias and varaince are inversely connected (); models with high bias will have low variance and vice versa.

[_Calculating Bias-Variance Tradeoff_](http://rasbt.github.io/mlxtend/user_guide/evaluate/bias_variance_decomp/)

Bias is defined as the difference between the expected value of the estimator and the parameter that we want to estimate
$$
Bias=E[\hat{\theta}]-\theta
$$

Variance is defined as the difference between the expected value of the squared estimator mimus the squares expectation of the estimator.
$$
Variance(\hat{\theta})=E[\hat{\theta}^2]-\left(E[\hat{\theta}] \right)^2
\newline or \newline
Variance(\hat{\theta})=E\left[\left(E[\hat{\theta}]-\hat{\theta} \right)^2 \right]
$$

where $\hat{\theta}$ represents some given point estimator of some parameter or function $\theta$ and $E\left[ \right]$ represents some expected output.

Furthermore, these formulae only apply to squared error loss, not for 0-1 loss. 0-1 loss is commonly used for classification problems where the predictions proximity to either 0 or 1 indicate the model's favor.

## [__Bagging & Boosting__](https://medium.com/@sauryathome/boosting-machine-learning-b424e84066a3)

_Bagging_ is a technique used in ML to turn weak classifiers into strong classifiers capable of making predictions. The most common approach is to make a prediction based on the prediction of many weak classifiers to generate a strong classifier's prediction. What makes bagging different from boosting however is that the weak classifiers are operating independently of each other, thus, we really are making some aggregation of the weak classifiers to make a "strong" prediction.

_Boosting_ is an ensemble technique in which the weak classifiers are used together--similar to Bagging--to create a "strong" prediction. The difference here though is that the weak classifiers are used sequentially, as opposed to independently. The fundamental logic for this algorithm is that subsequent weak classifiers learn from the mistakes of the previous predictors.

Boosting using Gradient Descent
$$
\text{Given: } Loss=\sum_{i=0}^{n}(y_i-y_i^p)^2
\newline
$$
where $y_i$ represents the $i^{th}$ outcome and $y_i^p$ represents the $i^{th}$ prediction
$$
y_i^p=y_i^p+\alpha*\frac{\delta\sum_{i=0}^{n}(y_i-y_i^p)}{\delta y_i^p}
$$
where $\alpha$ is the learning rate and $\sum_{i=0}^{n}(y_i-y_i^p)$ is the sum of residuals.


## [__Weak vs. Strong Classifiers__]()
Weak classifiers are those whose predictions are either "wishy-washy" or inaccurate. For example, imagine you make a classifier whose output is somewhere between 0 and 1; any classifier who consistenly guesses near 0.5 or consistently guesses incorrectly is considered to be a weak classifier.

On the other hand, strong classifiers are ones that make "strong" guesses and are generally accurate. An example of this would be a classifier that consistenly give an accurate guess close to 0 **or** 1.

## [__Residuals__]()
As stated above, a residual is the difference between an observed value and a predicted value in regression analysis. In practice, a residual will have a positive value if its coordinates lie above the fitted line, and negative otherwise. However, goal of generating a fitted line is finding a linear equation such that the sum of all residuals--positive and negative--equate to zero. A single residual over a dataset is calculated with:
$$
r = y_i - y_i^p
$$
where $y_i$ represents the $i^{th}$ observation and $y_i^p$ represents the $i^{th}$ prediction


