import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure WAlgebraObject where
  carrier : Type
  vonNeumannAlgebra : Prop
  ultraweakTopology : Type u
  sigmaWeakContinuous : Prop
  factorDecomposition : Prop

structure AdmittedWAlgebraObject where
  obj : WAlgebraObject
  semifinite : Prop
  typeII_1 : Prop
  conclusion : semifinite ∧ typeII_1

def WWitnessClosed (O : AdmittedWAlgebraObject) : Prop :=
  O.conclusion

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse