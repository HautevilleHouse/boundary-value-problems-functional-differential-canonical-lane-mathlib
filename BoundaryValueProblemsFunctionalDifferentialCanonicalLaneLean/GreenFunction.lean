import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FredholmAlternative

/-!
# Green Function Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure GreenFunctionPackage {F : BVPFunctionSpacePackage}
    {S : AbstractBVPSolverPackage F}
    {FA : FredholmAlternativePackage F S} where
  kernelConstruction : Prop
  representationFormula : Prop
  boundaryConditionsSatisfied : Prop

def GreenFunctionClosed {F : BVPFunctionSpacePackage}
    {S : AbstractBVPSolverPackage F}
    {FA : FredholmAlternativePackage F S} (G : GreenFunctionPackage F S FA) : Prop :=
  G.kernelConstruction ∧ G.representationFormula ∧ G.boundaryConditionsSatisfied

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
