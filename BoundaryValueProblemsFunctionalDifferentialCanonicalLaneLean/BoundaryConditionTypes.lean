import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BoundaryConditionPackage where
  functionSpace : Type u
  boundaryData : Type v
  linearBoundaryCondition : Prop
  nonlinearBoundaryCondition : Prop
  mixedType : Prop

structure BoundaryConditionEvidence (B : BoundaryConditionPackage) where
  linearBoundaryConditionClosed : B.linearBoundaryCondition
  nonlinearBoundaryConditionClosed : B.nonlinearBoundaryCondition
  mixedTypeClosed : B.mixedType

def BoundaryConditionClosed (B : BoundaryConditionPackage) : Prop :=
  B.linearBoundaryCondition ∧ B.nonlinearBoundaryCondition ∧ B.mixedType

theorem boundary_condition_closed_from_evidence (B : BoundaryConditionPackage)
    (E : BoundaryConditionEvidence B) : BoundaryConditionClosed B := by
  exact And.intro E.linearBoundaryConditionClosed
    (And.intro E.nonlinearBoundaryConditionClosed E.mixedTypeClosed)

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse