import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure CAlgebraObject where
  carrier : Type
  starRing : StarRing carrier
  cStarNorm : Norm carrier
  completeNormedStarAlgebra : Prop
  abstractCAlgebra : Prop

structure AdmittedCAlgebraObject where
  obj : CAlgebraObject
  separable : Prop
  simple : Prop
  conclusion : separable ∧ simple

def CWitnessClosed (O : AdmittedCAlgebraObject) : Prop :=
  O.conclusion

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse