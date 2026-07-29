import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure AdmissibleClass where
  object : CWAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CWAdmittedClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse