# Decision Trees
## **What are They?**
Decision trees are essentially binary trees where each node navigates either left or right based on an aspect of an individial feature. The overall strcture of a DT consists of:
* Root: The base of the decision tree
* Decision: The point at which a sub-node is split into two further nodes
* Leaf: The lowest node which houses some prediction
* Splitting: The act of dividing nodes into multiple sub-nodes
* Pruning: The process of removing sub-nodes from a decision tree
* Branch: A sub-tree of the decision tree

In many ways, this is essentially a long list of if statements where each condition has taken the form of a node.
## **Types of Decision Trees**
### _Categorical_
These decision trees are used when the outcome (or predicted value) is simple. In other words, if the set of all predictions contains a finite set of categories (think, "cat" or "dog"), then you are dealing with a categorical variable decision tree.
### _Continuous_
On the other hand, if the set of all predictions can be summarized as an array or probabilities, then you are dealing with a continuous variable decision tree. These can also be called "Regression Trees" because they are used to find some boundary (or set of boundaries) where each outcome is encapsulated by some area of a function. These trees can be used for both linear and non-linear relationships if the correct algorithm is selected.

## **Pros and Cons of Decision Trees**
Pros:
* Works for both numerical/categorical data
* Models problems with multiple outputs
* Test the reliability of teh tree
* Requires less data cleaning than other modeling techniques
* Easy to explain to those without an analytical background

Cons:
* Affected by noise in the data
* Not ideal for large datasets
* Can disproportionately value (or weigh) attributes
* The decisions at nodes are limited to binary outcomes
* Trees complexity can quickly get out of hand (if-tree)

## **Training a Decision Tree**
The obvious goal for an algorithm responsible for developing a decision tree is deciding which features to focus on and what conditions to use for splitting/pruning. _Recursive Binary Splitting_ is a common approach to developing these nodes. You iteratively consider each feature at different split points and whichever node leads to the lowest cost is pushed into the tree. This kind of algorithm is recursive in nature (known as Greedy Algorithm) making the root node as best predictor.

## **Cost as it applies to Decision Trees**
### _Regression_
$$
\left(
\begin{bmatrix}
y_0 \\
y_1 \\
\vdots \\
y_n
\end{bmatrix}
-
\begin{bmatrix}
p_0 \\
p_1 \\
\vdots \\
p_n
\end{bmatrix}
\right)^2
=
\begin{bmatrix}
c_0 \\
c_1 \\
\vdots \\
c_n
\end{bmatrix}
$$
where:
* $y_i$ represents the actual value
* $p_i$ represents the predicted value
* $\sum_{i=0}^{n}(c_i)$ represents the loss value

This kind of loss function is also called _Mean Squared Error_; although _Root Mean Squared Error_ is generally better in terms of loss function accuracy. Keep in mind the example above is the mathematical notation which resembles the use of pandas DataFrames to house actual and predicted values.

### _Classification_
$$
idk
$$
idk

## **When does the splitting end?**
Because the complexity of your decision tree is based on the number of features you have in your dataset, the more features you have, the more splits you will see in your decision tree. Larger trees can lead to overfitting. One way to combat this is to have a minimum number of training inputs to use on each leaf and to set a maximum depth of the decision tree. The former will mean that we will mostly only look at nodes which are the most popular and the latter will mean that the tree is shorter, or the longest path from root to leaf is lower than if the model had been let free.

## **Further Optimization?**
Now that we have built out the tree, we can further optimize it by pruning. This is when we remove branches (or sub-trees) which use features with low importance. One method of pruning is called _Reduced Error Pruning_; which starts from the leaves and removes nodes with most popular class, decided based on whether or not the removal does not hurt accuracy. Other--more complex--methods are _Cost Complexity Pruning_ or _Weakest Link Pruning_

## **Boosting**
Boosting uses a base machine learning algorithm to fit data for any model, but it is most widely used for Decision Trees. The term "boosting" refers to a family of algorithms

---
---
## **Sources**
["Master's in DS"](https://www.mastersindatascience.org/learning/machine-learning-algorithms/decision-tree/#:~:text=A%20decision%20tree%20is%20a,that%20contains%20the%20desired%20categorization.)

[Medium - DTs in ML](https://towardsdatascience.com/decision-trees-in-machine-learning-641b9c4e8052)

[Medium - Boosting Acc of ML Models](https://towardsdatascience.com/boosting-the-accuracy-of-your-machine-learning-models-f878d6a2d185)


