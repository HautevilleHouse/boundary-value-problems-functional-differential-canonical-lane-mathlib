import BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean.BVPDAdmittedObject

namespace HautevilleHouse
namespace BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BVPDWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryValueProblemsFunctionalDifferentialCanonicalLaneLean
end HautevilleHouse