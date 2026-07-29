import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CWAdmittedClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse