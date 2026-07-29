import Mathlib.OperatorAlgebra.CStar

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure ContinuousFunctionalCalculusPackage where
  cstarAlgebra : CStarAlgebra
  functionalCalculus : Prop
  spectralMapping : Prop
  extendsToBorel : Prop

structure FunctionalCalculusEvidence (P : ContinuousFunctionalCalculusPackage) where
  functionalCalculusClosed : P.functionalCalculus
  spectralMappingClosed : P.spectralMapping
  extendsToBorelClosed : P.extendsToBorel

def FunctionalCalculusClosed (P : ContinuousFunctionalCalculusPackage) : Prop :=
  P.functionalCalculus ∧ P.spectralMapping ∧ P.extendsToBorel

theorem functional_calculus_closed_from_evidence
    (P : ContinuousFunctionalCalculusPackage) (E : FunctionalCalculusEvidence P) :
    FunctionalCalculusClosed P := by
  exact And.intro E.functionalCalculusClosed
    (And.intro E.spectralMappingClosed E.extendsToBorelClosed)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse