delG <-function(free.energies.of.formation.reactants,
                coefficients.reactants,
                free.energies.of.formation.products,
                coefficients.products) {
  
  prod <- sum(free.energies.of.formation.products * coefficients.products)
  react <- sum(free.energies.of.formation.reactants * coefficients.reactants)
  delG <- prod - react
  delG
}
delG()
# -reactants-
# CH4 =-50.62
# 3CL= 0
# -products-
# CHCL=-70.34
# 3HCL=-95.3
# should equal -305
#products(-50.62, 0)
#coefficientsP(1, 3)
#reactants(-70.34, -95.3)
#coefficientsR(1, 3)
# We sometimes write reactions like this:
# aA + bB = cC + dD
free.energies.of.formation.reactants <- c(-50.62, 0)
ab <- c(1, 3) # reactants
free.energies.of.formation.products <- c(-70.34, -95.3)
cd <- c(1, 3) # products
delG(free.energies.of.formation.reactants = free.energies.of.formation.reactants,
     coefficients.reactants = ab,
     free.energies.of.formation.products = free.energies.of.formation.products,
     coefficients.products = cd)
# CH4 + 3Cl2 <-> CHCl3 + 3HCl



