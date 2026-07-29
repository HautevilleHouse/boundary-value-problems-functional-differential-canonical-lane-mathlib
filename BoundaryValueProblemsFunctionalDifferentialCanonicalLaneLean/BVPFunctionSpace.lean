import canonicalLaneMathlib.AdmissibleClass

/-!
# BVP Function Space Package
-/

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

structure BVPFunctionSpacePackage where
  domain : Type u
  target : Type v
  functionClass : Type w
  normDefined : Prop
  completeness : Prop
  boundaryTraceDefined : Prop

def BVPFunctionSpaceClosed (F : BVPFunctionSpacePackage) : Prop :=
  F.normDefined ∧ F.completeness ∧ F.boundaryTraceDefined

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse
