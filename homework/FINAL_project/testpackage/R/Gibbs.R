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

# Conversion of input units
T <- T + 273.15 # temperature from Celsius to Kelvin
pH <- -log10(H)
H <- 10^(-pH)

# Set values of prescribed constants
R1 <- 8.3143e-3
R2 <- 8.314
Gf_Ca <- -552.8
Gf_CO3 <- -527.9
Gf_Calcite <- -1129.07
Gf_Pb <- -24.43
Gf_SO4 <- -744.53
Gf_H2O <- -237.13
Gf_Leadhillite <- -2525.0

#   ~Gibbs Calculations~
delGr = (sum(Gf0P)-sum(Gf0R))
delGr = delGr0 + R1*T*ln(Q)
delGr = delGr0 + R2*T*ln(Q)

return(list(T=T-273.15, H=10^(pH),delGr=(sum(Gf0P)-sum(Gf0R))))




