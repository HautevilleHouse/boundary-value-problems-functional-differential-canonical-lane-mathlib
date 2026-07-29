import canonicalLaneMathlib.AdmissibleClass
import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BVPPackage where
  domain : Type u
  boundary : Type v
  differentialOperator : Type w
  functionalEquation : Prop
  boundaryConditions : Prop
  solutionExists : Prop

structure BVPEvidence (P : BVPPackage) where
  domainClosed : P.domain
  boundaryClosed : P.boundary
  differentialOperatorClosed : P.differentialOperator
  functionalEquationClosed : P.functionalEquation
  boundaryConditionsClosed : P.boundaryConditions
  solutionExistsClosed : P.solutionExists

def BVPClosed (P : BVPPackage) : Prop :=
  P.functionalEquation ∧ P.boundaryConditions ∧ P.solutionExists

theorem bvp_closed_from_evidence (P : BVPPackage) (E : BVPEvidence P) :
    BVPClosed P := by
  exact And.intro E.functionalEquationClosed
    (And.intro E.boundaryConditionsClosed E.solutionExistsClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse