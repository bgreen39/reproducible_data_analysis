#     ***Gibbs Free Energy Calculations***
#This package will help to solve Gibbs free energy calculations as well as the solubility product for minerals.
#     ~Variable Definitions~
#Input Variables:
#   Q       = equilibrium constant
#   T       = temperature(in Celcius)
#   delGr0  = Change in Gibbs Free Energy @standard state
#   Gf0     = Gibbs Free Energy Formation @ 1 atm, 25 degrees celcius (kJ/mol)
#   H       = hydrogen concentration
#   pH      = pH of a solution

#Output Variables:
#   delGr   = Change in Gibbs Free Energy
#   sumGf0P = Total Sum of Gibbs free energy of formation for products
#   sumGf0R = Total Sum of Gibbs free energy of formation for reactants
#   log_keq = log of equilibrium constant
#   ksp     =solubility product

#Thermodynamic Coefficients:
#   R1       = Gas Constant (8.3143e-3 kJ/mol*K)
#   R2       = Gas Constant (8.314 J/mol*K)
