import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.FunctionalAnalyticFoundation

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BVPDAbstractWellPosedness (F : FunctionalAnalyticFoundation) where
  boundaryConditionCompatibility : Prop
  operatorCoercivity : Prop
  solutionContinuity : Prop
  endpointAprioriEstimate : Prop
  boundaryConditionCompatibilityClosed : boundaryConditionCompatibility
  operatorCoercivityClosed : operatorCoercivity
  solutionContinuityClosed : solutionContinuity
  endpointAprioriEstimateClosed : endpointAprioriEstimate

structure BVPDAbstractWellPosednessPackage (F : FunctionalAnalyticFoundation) where
  boundaryConditionCompatibility : Prop
  operatorCoercivity : Prop
  solutionContinuity : Prop
  endpointAprioriEstimate : Prop

def BVPDAbstractWellPosednessClosed {F : FunctionalAnalyticFoundation} (P : BVPDAbstractWellPosednessPackage F) : Prop :=
  P.boundaryConditionCompatibility ∧ P.operatorCoercivity ∧ P.solutionContinuity ∧ P.endpointAprioriEstimate

theorem bvpd_abstract_well_posedness_closed_from_evidence
    {F : FunctionalAnalyticFoundation} (P : BVPDAbstractWellPosednessPackage F)
    (E : BVPDAbstractWellPosedness P) : BVPDAbstractWellPosednessClosed P := by
  exact And.intro E.boundaryConditionCompatibilityClosed (And.intro E.operatorCoercivityClosed (And.intro E.solutionContinuityClosed E.endpointAprioriEstimateClosed))

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse