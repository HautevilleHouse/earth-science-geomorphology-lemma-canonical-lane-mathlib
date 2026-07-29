import EarthScienceGeomorphologyLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure AeolianProcessPackage where
  windRegime : Type
  sandTransport : Prop
  duneMorphology : Prop
  dustEmission : Prop
  loessDeposition : Prop

structure AeolianProcessEvidence (A : AeolianProcessPackage) where
  sandTransportClosed : A.sandTransport
  duneMorphologyClosed : A.duneMorphology
  dustEmissionClosed : A.dustEmission
  loessDepositionClosed : A.loessDeposition

def AeolianProcessClosed (A : AeolianProcessPackage) : Prop :=
  A.sandTransport ∧ A.duneMorphology ∧ A.dustEmission ∧ A.loessDeposition

theorem aeolian_process_closed_from_evidence (A : AeolianProcessPackage)
    (E : AeolianProcessEvidence A) : AeolianProcessClosed A := by
  exact And.intro E.sandTransportClosed
    (And.intro E.duneMorphologyClosed
      (And.intro E.dustEmissionClosed E.loessDepositionClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse