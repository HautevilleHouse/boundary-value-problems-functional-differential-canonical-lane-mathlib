import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.GreenFunction

/-!
# Regularity and Smoothing Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure RegularitySmoothingPackage {F : BVPFunctionSpacePackage}
    {S : AbstractBVPSolverPackage F}
    {FA : FredholmAlternativePackage F S}
    {G : GreenFunctionPackage F S FA} where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  smoothingProperty : Prop
  aPrioriEstimates : Prop

def RegularitySmoothingClosed {F : BVPFunctionSpacePackage}
    {S : AbstractBVPSolverPackage F}
    {FA : FredholmAlternativePackage F S}
    {G : GreenFunctionPackage F S FA} (R : RegularitySmoothingPackage F S FA G) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.smoothingProperty ∧ R.aPrioriEstimates

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
