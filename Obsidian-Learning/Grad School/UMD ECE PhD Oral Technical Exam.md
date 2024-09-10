
[**Computer Engineering Topics**](https://drive.google.com/file/d/1ebzadqGB_tA64k4Z2SXOUtZL43sWLTzU/view)
1. Long Channel I-V and C-V Characteristics: Sections 2.2 and 2.3
2. Nonideal I-V Characteristics: Sections 2.4.1-2.4.4
3. DC Transfer Characteristics: Sections 2.5.1-2.5.2
4. CMOS Processing Technology: Sections 3.1-3.3
5. Delay: Basic Concepts: Section 4.1, 4.2, 4.3.1-4.3.5
6. Delay: Advanced Concepts: Section 4.4, 4.5
7. Power Dissipation: Sections 5.1 and 5.2
8. Interconnect Basic: Section 6.1
9. Interconnect Advanced: 6.2, 6.3
10. Interconnect Optimization: Buffer Insertion
11. Static CMOS Design
12. Sequential Circuit Design: Design of Flip Flips (Master-Slave, D Flip Flop)


[**Communications and Signal Processing Topics**](https://drive.google.com/file/d/1b6SGtmaY6a_qcJblwPMNj9FC5Axl_-Ym/view)
- **Mathematical Foundations**: probability spaces, countable additivity, discrete and continuous probability experiments, independence, sequences of events and experiments, product spaces, Borel-Cantelli lemmas, dependence, conditional probabilities.
- **Markov Chains**: the Markov property, time-homogeneous Markov chains, recurrence and transience, classification of states, criteria for recurrence, periodicity, stationary Markov chains, ergodic theorems.
- **Random variables**: univariate and multivariate distributions, conditional distributions, functions of random variables, expectation, properties of expectation, Markov inequality and its applications.
- **Transformation of random variables**: moment generating and characteristic functions, large deviation theory and concentration of measure.
- Convergence or random variables: convergence in distribution, convergence in probability, sure and almost sure convergence, weak and strong laws of large numbers, second-order properties of random sequences and vectors, central limit theorem, introduction to martingales and their convergence.
- Gaussian random variables, vectors and processes: specification and main properties, whitening transformations (causal and spectral).
- Random processes: wide-sense stationary sequences, autocorrelation, autocovariance, LTI transformations, power spectral density, Herglotz’ theorem, the periodogram and its significance, notions of spectral factorization, rational power spectral densities, Poisson process and elementary renewal theory, Brownian motion, strict-sense stationarity and Birkhoff’s ergodic theorem.
- Linear estimation: minimum mean-square error estimation (nonlinear and linear cases), geometry of linear estimation, innovations, application to causal prediction, causal estimation of stationary sequences from noisy observations (Wiener filter).


[**Controls Topics**](https://drive.google.com/file/d/1BZt7sCMkiuSl4NTY5zmMq6P1hc3R2ATw/view)
##### Introduction: 
ENEE 660 System Theory is a graduate course focusing on rigorous mathematical concepts and methods to model, analyze and design finite-dimensional linear feedback systems.

##### Oral Exam Requirements
Knowledge in the topics expounded in §2.1 - §2.6 is required to pass an
ENEE 660 qualifying exam.

**2.1 Linear Algebra Concepts**
• Matrices.
	– Matrix calculus.
	– Determinant, eigenvalues, eigenvectors, diagonalization, and in-
	verse.
	– Jordan normal form.
	– Unitary matrices.
	– Positive definiteness.
	– Singular value decomposition.
• Finite and infinite dimensional vector spaces.
	– Invariant subspaces.
	– Kernel and range of a matrix.
	– Inner product, normed spaces and Cauchy-Schwartz inequality.
	– lp and Lp spaces and norms.
	– Matrix norms and properties.
	– Basis, orthonormal basis and Gram-Schmidt orthogonalization.
	– Orthogonal projections and least squares problems.
	– Moore-Penrose pseudoinverse and minimum norm solutions to
	least squares problems.
	
This material is covered in part or in its totality in [1], [2, Lectures 1 - 5],and [5, Chapter 1, 18].
	
**2.2 Basic Concepts and Methods**
• Transforms: Laplace, Z and Fourier
	– Properties and regions of convergence.
	– Relation among the transforms.
• State-space representation, frequency and time domain methods.
	– Continuous-time systems described by linear differential equations.
	– Discrete-time systems described by linear difference equations.
	– Linearity, time-invariance, and concept of state.
	– State-space representations of systems described by linear differential and difference equations.
	– Obtaining linear state-space models via linearization.
	– Convolution, transfer function matrix, and impulse response matrix of linear time-invariant (LTI) systems.
	– Relationship between state-space representation and the transfer
	function matrix, including conditions for realizability.
	– Block-diagram algebra.
	This material is covered in part or in its totality in [5, Chapter 1 and 2],
	[4, Lecture 1 - Lecture 4] and [2, Lectures 6 - 8].

Note 1: If a method or concept listed henceforth exists in both discrete
and continuous time then knowledge in both is required.

Note 2: All concepts and methods listed henceforth are to be considered
in the context of state-space models.

**2.3 Solutions and Stability**
	• Solution methods.
		– Homogeneous solution and state-transition matrix.
		– Exponential and powers of a matrix: properties and computation.
		– State-transition matrix for LTI systems.
		– Peano-Baker series: properties, computation and special-cases.
		– State-transition matrix for (LTV) systems.
		– Forced and complete solutions for LTI and LTV systems.
	• Internal stability
		– Marginal stability, asymptotic stability and exponential stability:
		definitions, comparison and uniformity properties.
		– Using the state transition matrix to characterize internal stability
		for LTI and LTV systems.
		– Eigenvalue and Lyapunov stability tests for LTI systems.
		– Lyapunov’s indirect method (for linearizable nonlinear systems).
		• Input-output stability.
		– Definition of bounded input bounded output (BIBO) stability for
		LTI and LTV systems.
		– Using the state transition matrix to characterize BIBO stability
		for LTI and LTV systems.
		– Connections between internal and BIBO stability for LTI and LTV
		systems.
		
This material is covered in part or in its totality in [5, Chapters 3 -7, 12], [4, Lecture 5 - Lecture 9] and [2, Lectures 10, 11, 13 - 15].

**2.4 Open Loop Control and Full-State Feedback**
	• Controllability and reachability in continuous and discrete-time.
		– Definitions of controllability and reachability.
		– Gramian matrices for controllability and reachability: positivity
		tests, minimum energy control solutions and properties.
		– Reachable and controllable subspaces.
		– Controllability matrix and rank tests.
		– PBH controllability tests for LTI systems.
		– Lyapunov-like test.
	• Controllable/uncontrollable decompositions and stabilizability for LTI
	systems.
		– Controller form.
		– Construction of a controllable/uncontrollable decomposition.
		– PBH stabilizability tests.
		– Lyapunov-like tests for stabilizability.
		– Construction of stabilizing full-state feedback controllers.
		– Pole-placement for reachable systems and partial pole-placement
		for stabilizable systems.
	
This material is covered in part or in its totality in [5, Chapters 9, 13, 14, 18],
[4, Lecture 11 - Lecture 14] and [2, Lectures 22, 23, 28].

**2.5 Observability and Observers**
	• Observability and constructability.
		– Definitions of observability and constructability.
		– Gramian matrices for observability and constructability: positivity tests, determination of the state at the initial or pre-specified terminal time and properties.
		– Unobservable and unconstructable subspaces.
		– Observability matrix and rank tests.
		– PBH observability tests of LTI systems.
		– Lyapunov-like observability test.
	• Observable/unobservable decompositions and detectability for LTI systems.
		– Observer form.
		– Construction of an observable/unobservable decomposition.
		– PBH detectability tests.
		– Lyapunov-like detectability test.
	• Luenberger observer.
		– State-space representation of the Luenberger observer and state-
		space representation of the estimation error dynamics.
		– Design of stabilizing gains for the Luenberger observer.
		– Observer pole placement for observable systems, and partial pole
		placement for detectable systems.
	• Kalman decomposition for LTI systems
		– Construction of the Kalman decomposition for LTI systems.
		– Transfer function in terms of the Kalman decomposition blocks.
		– Minimal realizations.
	• Poles and zeros of MIMO transfer functions (basic concepts).

This material is covered in part or in its totality in [5, Chapters 15, 18],
[4, Lecture 15, 16, 17, 18, 19] and [2, Lectures 24, 25, 29].

**2.6 Observer-based output feedback control (LTI case)**
	• Feedback interconnection.
		– Necessary and sufficient conditions for well-posedness.
		– State-space representation of the closed-loop system.
		– Transfer function of the closed-loop.
	• Observer-based controllers.
		– Overall state-space representation.
		– Equivalence of the stability of the feedback loop and that of both
		the full-state feedback and the estimation error of the Luenberger
		observer.
	This material is covered in part or in its totality in [5, Chapters 9, 13, 14],
	[4, Lectures 16] and [2, Lectures 17, 29].

[**Electrophysics Topics**](https://drive.google.com/file/d/1bv4LJ37k2UeuTWWK-x0ZzIJwojLB_BgG/view)
**Textbooks:**
Modern Electrodynamics by Andrew Zangwill, Cambridge University Press
Classical Electrodynamics, J. D. Jackson , John Wiley and Sons

**Core topics for the Qualifying Exam:**
1. Maxwell's Equations (Jackson: 6.1-6.7, Zangwill: 15, Overlaps with ENEE680)
	• Potentials in time dependent problems, gauge conditions
	• Conservation laws, electromagnetic stress tensor

2. Plane Electromagnetic Waves and Wave Propagation (Jackson: 7.1-7-10, Zangwill: 16-18)
	• plane waves in dielectrics and conducting media; polarization
	• Fourier Optics and Diffraction (Fresnel and Fraunhofer)
	• reflection and refraction at interfaces
	• superposition, dispersion, group velocity, Kramers-Kronig relations
	• Conducting media (Drude model)
	• Magnetic Materials and Metamaterials (epsilon and mu are complex and frequency dependent)
	• Anisotropic Media (biaxial, uniaxial and isotropic crystals)

3. Guiding of Electromagnetic Waves (Jackson: 8.1-8.8, 8.10,8.11, Zangwill: 19)
	• hollow conducting guides, transmission lines
	• waves guided by dielectrics, optical fibers

4. Radiation Sources (Jackson: 9.1-9.12, Zangwill: 20)
	• Green's functions for the inhomogeneous wave equation
	• multipole expansion
	• antennas

**Optional topics:** In addition to the core topics, the course usually covers some other topics in
electromagnetics, such as:
- special relativity,
- left-handed media
- chaos, radiation scattering
- Cherenkov radiation
- Free electron laser, etc.

[**Microelectronics Topics**](https://drive.google.com/file/d/1bv4LJ37k2UeuTWWK-x0ZzIJwojLB_BgG/view)
1. Course Overview & Crystal Properties [1, Chapter 1]
	- Crystal structure (Lattice, Basis Vectors, Unit Cell, Primitive Unit Cell)
2. Atoms and Electrons [1, Chapter 2]
	- Bohr model
	- Intro to quantum mechanics
	- Schrodinger Wave Equation
	 - Infinite Well
	- Finite Well
	- Tunneling
1. Energy Bands and Charge carriers in semiconductors [1, Chapter 3]
Energy bands in solids
Effective Mass
E vs k
Maxwell Boltzmann Distribution
Fermi Distribution
4. Transport [1, Chapter 4]
Drift
Diffusion
Mobility
Phonons