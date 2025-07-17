# Welcome to Sorting-Algorithm Repository!


**Sorting**  is a skill that every  **software engineer**  and  **developer**  needs some knowledge of. Not only to pass coding interviews but as a general understanding of programming itself. The different sorting algorithms are a perfect showcase of how algorithm design can have such a strong effect on program complexity, speed, and efficiency.


# Selection Sort

**Selection sort** is also quite simple but frequently outperforms bubble sort. If you are choosing between the two, it’s best to just default right to selection sort. With Selection sort, we divide our input list / array into two parts: the sublist of items already sorted and the sublist of items remaining to be sorted that make up the rest of the list. We first find the smallest element in the unsorted sublist and place it at the end of the sorted sublist. Thus, we are continuously grabbing the smallest unsorted element and placing it in sorted order in the sorted sublist. This process continues iteratively until the list is fully sorted.
           ![enter image description here](https://a.top4top.io/p_1741bco6x1.gif)
       

>     to see the code open/run Selection_Sort.py
>     Python3 Selection_Sort.py

##  Insertion Sort

Insertion sort is both faster and well-arguably more simplistic than both bubble sort and selection sort. Funny enough, it’s how many people sort their cards when playing a card game! On each loop iteration, insertion sort removes one element from the array. It then finds the location where that element belongs within another  _sorted_  array and inserts it there. It repeats this process until no input elements remain.
																![enter image description here](https://c.top4top.io/p_1741u2v4h1.gif)

    > to see the code open/run Insertion_Sort.py
    > Python3 Insertion_Sort.py

##  Merge Sort
Merge sort is a perfectly elegant example of a Divide and Conquer algorithm. It simple uses the 2 main steps of such an algorithm:

(1) Continuously  _divide_ the unsorted list until you have  _N_  sublists, where each sublist has 1 element that is “unsorted” and  _N_ is the number of elements in the original array.

(2) Repeatedly  [merge](https://en.wikipedia.org/wiki/Merge_algorithm)  i.e  _conquer_ the sublists together 2 at a time to produce new sorted sublists until all elements have been fully merged into a single sorted array.
![enter image description here](https://f.top4top.io/p_1741h1u631.gif)

>     > to see the code open/run Merge_Sort.py
>     > Python3 Merge_Sort.py

## Quick Sort

Like  [Merge Sort](https://en.wikipedia.org/wiki/Merge_algorithm), **QuickSort** is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways.

1.  Always pick first element as pivot.
2.  Always pick last element as pivot (implemented below)
3.  Pick a random element as pivot.
4.  Pick median as pivot.

The key process in quickSort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.
![enter image description here](https://f.top4top.io/p_1741h1u631.gif)
>     > to see the code open/run Quick_Sort.py
>     > Python3 Quick_Sort.py

# Python Algorithms

<div align="center">
<!-- Title: -->
  <a href="https://github.com/TheAlgorithms/">
    <img src="https://raw.githubusercontent.com/TheAlgorithms/website/1cd824df116b27029f17c2d1b42d81731f28a920/public/logo.svg" height="100">
  </a>
  <h1><a href="https://github.com/TheAlgorithms/">The Algorithms</a> - Python</h1>
<!-- Labels: -->
  <!-- First row: -->
  <a href="https://gitpod.io/#https://github.com/TheAlgorithms/Python">
    <img src="https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod&style=flat-square" height="20" alt="Gitpod Ready-to-Code">
  </a>
  <a href="https://github.com/TheAlgorithms/Python/blob/master/CONTRIBUTING.md">
    <img src="https://img.shields.io/static/v1.svg?label=Contributions&message=Welcome&color=0059b3&style=flat-square" height="20" alt="Contributions Welcome">
  </a>
  <img src="https://img.shields.io/github/repo-size/TheAlgorithms/Python.svg?label=Repo%20size&style=flat-square" height="20">
  <a href="https://the-algorithms.com/discord">
    <img src="https://img.shields.io/discord/808045925556682782.svg?logo=discord&colorB=7289DA&style=flat-square" height="20" alt="Discord chat">
  </a>
  <a href="https://gitter.im/TheAlgorithms/community">
    <img src="https://img.shields.io/badge/Chat-Gitter-ff69b4.svg?label=Chat&logo=gitter&style=flat-square" height="20" alt="Gitter chat">
  </a>
  <!-- Second row: -->
  <br>
  <a href="https://github.com/TheAlgorithms/Python/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/TheAlgorithms/Python/build.yml?branch=master&label=CI&logo=github&style=flat-square" height="20" alt="GitHub Workflow Status">
  </a>
  <a href="https://github.com/pre-commit/pre-commit">
    <img src="https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white&style=flat-square" height="20" alt="pre-commit">
  </a>
  <a href="https://github.com/psf/black">
    <img src="https://img.shields.io/static/v1?label=code%20style&message=black&color=black&style=flat-square" height="20" alt="code style: black">
  </a>
<!-- Short description: -->
  <h3>All algorithms implemented in Python - for education</h3>
</div>

Implementations are for learning purposes only. They may be less efficient than the implementations in the Python standard library. Use them at your discretion.

## Getting Started

Read through our [Contribution Guidelines](CONTRIBUTING.md) before you contribute.

## Community Channels

We are on [Discord](https://the-algorithms.com/discord) and [Gitter](https://gitter.im/TheAlgorithms/community)! Community channels are a great way for you to ask questions and get help. Please join us!

## List of Algorithms

See our [directory](DIRECTORY.md) for easier navigation and a better overview of the project.
