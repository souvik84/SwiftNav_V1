# SwiftNav: A probabilistic global optimizer

## Table of Contents
- [Introduction](#intro)
- [Examples](#examples)
- [Usage](#usage)

## Introduction
SwiftNav is a zeroth order probabilistic global optimization algorithm for (not necessarily convex) functions over a compact domain. A discretization procedure is deployed on the compact domain, starting with a small step-size ℎ > 0 and subsequently adaptively refining it in the course of a simulated annealing routine utilizing the Walker-slice and Gibbs’s sampling, in order to identify a set of global optimizers up to good precision. SwiftNav is parallelizable, which helps with scalability as the dimension of decision variables increases. 

SwiftNav is deployed as a custom annealing function used with MATLAB's simulannealbnd funtion. Users can leverage MATLAB's GUI to view the global optimization routine in real-time, or view the same via values logged on the command line.

## Examples
The following table collects all the pre-loaded optimal numerical experiments. Implementation details for all the examples are given in their README.md files which can be found within their directories. Simply click and scroll down.

## Usage
1. SwiftNav runs completely on MATLAB. To run any example, users are required to enter the dynamics of the problem as a function and save it as a .m MATLAB file of the same name. The only inputs to the file created should be -- the variables and the dimensions of the problem. For eg -
   
   ![image](https://github.com/user-attachments/assets/383d6fe8-610d-4cf9-9ff6-ef8a5cbbf438)

2. Users are then needed to customize the file globopt.m as per their needs. There are two steps -
  -  Add the following code snippet to append support for their custom function -
    
      ![image](https://github.com/user-attachments/assets/09037e59-20ed-405c-90bd-6f5981ccc88c)

  -  Choose between options6 or options7. Options6 helps user leverage the MATLAB GUI to observe global optimization in real-time. Options7, on the other hand logs results directly onto the command line, which is useful when the GUI cannot be seen (working on a remote server).
    
      ![image](https://github.com/user-attachments/assets/1b91c362-2c90-4990-a834-d6f380508a7a)

3. Create a .txt file (input4.txt) supplying the following information -
  -  your_function_name
  -  Problem dimension
  -  Exploration parameter (k) value
  -  Step size (h) value
  -  Domain
  -  p value
  -  step-size factor (delta)
  -  q value
    
   Readers are referred to [link_of_paper] to know more about these values. The values of p, delta and q used in our experiments were 30, 2 and 50 respectively.

  ![image](https://github.com/user-attachments/assets/abd262f2-4ddf-4da9-8088-2d897dca5178)

   Multiple lines in the txt file can be added to compute optimal values for multiple functions one after the other, provided Step 1 and Step 2 are duly followed.

4. Execute file runner.m -- This will activate parallel processing and start the computation process, visible either as a GUI or over the command line.
5. A .xlsx file, OptimizationResultsVanilla.xlsx will be created automatically containing all important information pre-loaded as clickable links. Users can view:
-  Optimal value obtained
-  Time taken
-  Values of variable x at optima
-  Progression of best values against iterations
-  Progression of current values against iterations
-  Progression of step-size against iterations

