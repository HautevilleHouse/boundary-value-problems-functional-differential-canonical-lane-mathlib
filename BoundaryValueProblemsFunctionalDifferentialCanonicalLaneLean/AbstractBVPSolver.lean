import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.BVPFunctionSpace

/-!
# Abstract BVP Solver Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure AbstractBVPSolverPackage {F : BVPFunctionSpacePackage} where
  linearOperator : Prop
  boundaryOperator : Prop
  solutionExistence : Prop
  uniqueness : Prop
  stability : Prop

def AbstractBVPSolverClosed {F : BVPFunctionSpacePackage} (S : AbstractBVPSolverPackage F) : Prop :=
  S.solutionExistence ∧ S.uniqueness ∧ S.stability

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
