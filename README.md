SEIQV Epidemic Model and Numerical Methods

Project Overview

This project is part of the Licenciatura in Engenharia e Gestão Industrial at Instituto Superior Técnico, and it implements mathematical algorithms for solving non-linear systems and differential equations. The key focus of the project is on the SEIQV Epidemic Model to simulate the spread of computer worms with quarantine and vaccination strategies.

The project utilizes:

	•	Newton’s method for approximating solutions to non-linear systems.
	•	Heun’s method (an improved version of the Euler method) for solving ordinary differential equations (ODEs).
	•	SEIQV model for simulating the epidemic spread of computer worms.

Key Features

	1.	Newton’s Method for Non-linear Systems:
	•	This part of the project involves using Newton’s iterative method to approximate solutions to non-linear systems of equations. It includes checking for convergence and error tolerance.
Key Parameters:
	•	f: The function representing the system of equations.
	•	Jf: The Jacobian matrix of f.
	•	eps: Tolerance for stopping criteria.
	•	max: Maximum number of iterations.
	•	y0: Initial guess for the solution vector.
	2.	Heun’s Method for Ordinary Differential Equations (ODEs):
	•	Heun’s method is a second-order Runge-Kutta method that improves on the Euler method by averaging the slopes to predict better solutions for ODEs. This method is used to approximate the solution for epidemic models.
Key Parameters:
	•	f: Function that defines the ODE system.
	•	ya: Initial conditions for the variables.
	•	a: Initial point of integration.
	•	b: End point of integration.
	•	n: Number of integration steps.
	•	k: Number of equations in the system.
	3.	SEIQV Epidemic Model for Computer Worms:
	•	This model simulates the spread of computer worms across vulnerable hosts with states: Susceptible (S), Exposed (E), Infected (I), Quarantine (Q), and Vaccinated (V). The model considers infection rates, quarantine measures, and vaccination strategies to control the epidemic.
	•	The project calculates equilibrium points and uses Newton’s method to determine stability. It simulates the dynamics of infected and quarantined hosts over time and compares various quarantine rates.# Numerical_Methods_Epidemic


Key Simulations

	1.	Equilibrium Points Calculation:
	•	Using Newton’s method, the project calculates equilibrium points for different parameter values to determine the stability of the infection-free and endemic states.
	2.	Impact of Quarantine on Infections:
	•	The simulation compares the effect of varying quarantine rates (α2) on the peak number of infected hosts (I-Max). As quarantine rates increase, the maximum number of infected individuals decreases, showing the effectiveness of quarantine strategies.

Conclusion

This project successfully implements numerical methods (Newton’s method and Heun’s method) to solve non-linear systems and ODEs, respectively. It also provides a thorough analysis of the SEIQV epidemic model, highlighting the importance of quarantine and vaccination in controlling the spread of computer worms.

The quadratic convergence of Heun’s method and the stability analysis using Newton’s method ensure accurate and reliable approximations of complex systems.

