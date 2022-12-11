## Data Structures
---
### Arrays, Lists, or Vectors
    An array is a group of spaces in a machine's memory where the space in memory is commonly denoted by the name of the array and the index (array[i]). 

    [ item , item , item ]
|Operation|Runtime|
|:-|:-|
|Insert|$O(1)$|
|Update|$O(1)$|
|Delete|$O(1)$|

---
### Linked Lists
    A linked list is a collection of nodes (or objects) with a value and a pointer. The pointer points to the next item in the linked list. The first node is referred to as the head and the last node is referred to as the tail.

    To select a specific item into a linked list, you must travel along the linked list until you find the item. This means that the worst-case runtime is O(n). The same goes for insertion and deletetions; except you must change the pointers of the affected nodes.

     ________        ________        ________       
    | val: 1 |      | val: 2 |      | val: 3 |      
    | next   | ---> | next   | ---> | next   | ---> NULL

|Operation|Runtime|
|:-|:-|
|Select|$O(N)$|
|Insert|<ul><li>at front: $O(1)$<li>at end: $O(1)$|
|Update|$O(1)$|
|Delete|$O(1)$|

---
### Stacks
    A stack is an ordered collection of items for which we can only add or remove items from one end (the "top"). The stack is another container class with the following operations.
        push:   add a new item on top of the stack
        pop:    remove the top item from the stack
        empty:  check that the stack is empty
        size:   check the size of the stack

    Some edge cases to consider are underflow and overflow. Obviously, you cannot pop an item off an empty stack, which can often lead to "item out of index" errors. Overflow errors will be less common than underflow errors, but these are more difficult to handle. To avoid these errors you will have to check how much memory you have left and verify that there is enough space for another item.

    A great conceptual use case for stacks are parentheses matching. Process a string and if the stack is empty by the end, then you have all your parentheses in the string.
```python
def pop(stack):
    return stack[1:]

def push(stack, item):
    return stack.push(item)

def empty(stack):
    return len(stack) > 0

def size(stack)
    return len(stack)

stack = []

stack = push(stack, 3)      # | 3 | <-- top

stack = push(stack, 5)      # | 5 | <-- top
                            # | 3 |

stack = push(stack, 8)      # | 8 | <-- top
                            # | 5 |
                            # | 3 |

stack = pop(stack)          # | 5 | <-- top
                            # | 3 |

is_empty = empty(stack)     # false

stack_size = size(stack)    # 2
```

|Operation|Runtime|
|:-|:-|
|Select|$O(1)$|
|Insert|$O(1)$|
|Update|N/A|
|Delete|$O(1)$|

---
### Queues
    A queue is a linear data strcture that is open at both ends and the operations are performed in the First In, First Out (FIFO) order. This is similar to a stack in that elements can only be reached in a certain order. Furthermore, both a queue and a stack can be done in both arrays or linked lists. The following example is a python's take on the list implementation of a queue.

```python
class Node:
    def __init__(self, value):
        self.value = value
        self.next = None

class Queue:
 
    def __init__(self):
        self.front = self.rear = None
 
    def empty(self):
        return self.front == None
 
    def enqueue(self, item):
        temp = Node(item)
 
        if self.rear == None:
            self.front = self.rear = temp
            return
        self.rear.next = temp
        self.rear = temp
 
    # Method to remove an item from queue
    def dequeue(self):
 
        if self.isEmpty():
            return
        temp = self.front
        self.front = temp.next
 
        if(self.front == None):
            self.rear = None

q = Queue()
q.enque("one")  # | "one" |
q.enque("two")  # | "one" | --> | "two" |
q.deque()       # | "one" |
q.empty()       # false
```

|Operation|Runtime|
|:-|:-|
|Select|$O(1)$|
|Insert|$O(1)$|
|Update|N/A|
|Delete|$O(1)$|

---
### Binary Search Trees
    A binary search tree is a node-based binary tree data structure which has the following properties.
        1. The left subtree of a node contains only nodes with keys lesser than the node's key
        2. The right subtree of a node contains only nodes with keys greater than the node's key
        3. The left and right subtree each must also be abinary search tree
<br/>

    Insertions into a BST can be very simple if the node to be inserted can become a leaf node; the same cannot be said otherwise. 
<br/>

    The level of complexity for deletion operations to a BST is similar to that of insertions. 

|Operation|Runtime|
|:-|:-|
|Select|$O(h) \rightarrow O(log(N))$|
|Insert|$O(h) \rightarrow O(log(N))$|
|Update|$O(h) \rightarrow O(log(N))$|
|Delete|$O(h) \rightarrow O(log(N))$|

---
### Heaps
    A linked list is a collection of nodes (or objects) with a value and a pointer. The pointer points to the next item in the linked list. The first node is referred to as the head and the last node is referred to as the tail.

    To select a specific item into a linked list, you must travel along the linked list until you find the item. This means that the worst-case runtime is O(n). The same goes for insertion and deletetions; except you must change the pointers of the affected nodes.

     ________        ________        ________       
    | val: 1 |      | val: 2 |      | val: 3 |      
    | next   | ---> | next   | ---> | next   | ---> NULL

|Operation|Runtime|
|:-|:-|
|Select|$O(N)$|
|Insert|<ul><li>at front: $O(1)$<li>at end: $O(1)$|
|Update|$O(1)$|
|Delete|$O(1)$|

---
### Hash Tables
    A linked list is a collection of nodes (or objects) with a value and a pointer. The pointer points to the next item in the linked list. The first node is referred to as the head and the last node is referred to as the tail.

    To select a specific item into a linked list, you must travel along the linked list until you find the item. This means that the worst-case runtime is O(n). The same goes for insertion and deletetions; except you must change the pointers of the affected nodes.

     ________        ________        ________       
    | val: 1 |      | val: 2 |      | val: 3 |      
    | next   | ---> | next   | ---> | next   | ---> NULL

|Operation|Runtime|
|:-|:-|
|Select|$O(N)$|
|Insert|<ul><li>at front: $O(1)$<li>at end: $O(1)$|
|Update|$O(1)$|
|Delete|$O(1)$|

---
### Graphs
    A linked list is a collection of nodes (or objects) with a value and a pointer. The pointer points to the next item in the linked list. The first node is referred to as the head and the last node is referred to as the tail.

    To select a specific item into a linked list, you must travel along the linked list until you find the item. This means that the worst-case runtime is O(n). The same goes for insertion and deletetions; except you must change the pointers of the affected nodes.

     ________        ________        ________       
    | val: 1 |      | val: 2 |      | val: 3 |      
    | next   | ---> | next   | ---> | next   | ---> NULL

|Operation|Runtime|
|:-|:-|
|Select|$O(N)$|
|Insert|<ul><li>at front: $O(1)$<li>at end: $O(1)$|
|Update|$O(1)$|
|Delete|$O(1)$|

---
### Matrix
    A linked list is a collection of nodes (or objects) with a value and a pointer. The pointer points to the next item in the linked list. The first node is referred to as the head and the last node is referred to as the tail.

    To select a specific item into a linked list, you must travel along the linked list until you find the item. This means that the worst-case runtime is O(n). The same goes for insertion and deletetions; except you must change the pointers of the affected nodes.

     ________        ________        ________       
    | val: 1 |      | val: 2 |      | val: 3 |      
    | next   | ---> | next   | ---> | next   | ---> NULL

|Operation|Runtime|
|:-|:-|
|Select|$O(N)$|
|Insert|<ul><li>at front: $O(1)$<li>at end: $O(1)$|
|Update|$O(1)$|
|Delete|$O(1)$|

