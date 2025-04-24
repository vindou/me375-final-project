# ME 37500 Final Project

Repository consists of Simulink files with robot controller designs, also contains .m scripts.

- Main .slx file: Contains code for use on competition day.
    - lap 1: wheel voltages are dynamically adjusted based on reflectance sensor readings.
    - lap 2: when sensor reads finish line, begin following Gaussian smoothed path with higher velocity values
- Data Processing .m file: Store wheel voltage data, reconstruct track topology based on lap 1 data. Apply Gaussian smoothing, generate velocity curve to optimize velocity while following path, output 2 velocity curves for second run.
