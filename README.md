# SEIQV Dynamics and Numerical Methods

A MATLAB computational mathematics project studying computer-worm propagation with susceptible, exposed, infected, quarantined and vaccinated compartments. It implements numerical routines for nonlinear equilibrium equations and ordinary differential equations.

## Methods

- `NewtonMatriz.m`: Newton iteration for a nonlinear system, using a supplied Jacobian and a tolerance on the step norm.
- `Heun.m`: explicit second-order Runge-Kutta integration (Euler predictor and trapezoidal correction).
- `Fx*.m` / `JF*.m`: model equations and Jacobians for the project variants.
- `LiveScriptProjeto2.mlx`: the original computational study and analysis.

## Run

Open the repository folder in MATLAB, add it to the MATLAB path, and open `LiveScriptProjeto2.mlx`. Run the live script sections in order to reproduce the original analysis. The `.m` helpers can also be called from MATLAB with compatible function handles and initial conditions; parameter choices are in the source functions/live script.

No additional MATLAB toolbox dependency is declared in the supplied helper files. A compatible MATLAB installation is required for the live script; MATLAB execution was not available during this portfolio update.

## Limitations

Heun's method has second-order global accuracy for sufficiently smooth problems; this is distinct from quadratic convergence of Newton iteration, which requires additional local conditions. Computing an equilibrium with Newton's method alone does not prove its stability.

`NewtonMatriz` does not explicitly return a completed iteration count if the maximum is reached without convergence. `Heun` initializes the recorded maxima to one, so the reported maxima need review when state magnitudes are below one. These are preserved limitations of the original academic implementation.

This is a numerical modelling study of computer worms, not a medical forecasting system. Current verification covers source inspection rather than a fresh MATLAB experiment.
