# SwiftNav: A probabilistic global optimizer
SwiftNav is a zeroth order probabilistic global optimization algorithm for (not necessarily convex) functions over a compact domain. A discretization procedure is deployed on the compact domain, starting with a small step-size ℎ > 0 and subsequently adaptively refining it in the course of a simulated annealing routine utilizing the Walker-slice and Gibbs’s sampling, in order to identify a set of global optimizers up to good precision. SwiftNav is parallelizable, which helps with scalability as the dimension of decision variables increases. 

SwiftNav is deployed as a custom annealing function used with MATLAB's simulannealbnd funtion. Users can leverage MATLAB's GUI to view the global optimization routine in real-time, or view the same via values logged on the command line.

The following table collects all the pre-loaded optimal numerical experiments. Implementation details for all the examples are given in their README.md files which can be found within their directories. Simply click and scroll down.
