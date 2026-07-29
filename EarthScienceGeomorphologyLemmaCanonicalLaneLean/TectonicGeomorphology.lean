import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure TectonicGeomorphologyPackage where
  faultScarpDegradation : Prop
  riverOffset : Prop
  terraceFormation : Prop
  upliftRate : Prop

structure TectonicGeomorphologyEvidence (T : TectonicGeomorphologyPackage) where
  faultScarpDegradationClosed : T.faultScarpDegradation
  riverOffsetClosed : T.riverOffset
  terraceFormationClosed : T.terraceFormation
  upliftRateClosed : T.upliftRate

def TectonicGeomorphologyClosed (T : TectonicGeomorphologyPackage) : Prop :=
  T.faultScarpDegradation ∧ T.riverOffset ∧ T.terraceFormation ∧ T.upliftRate

theorem tectonic_geomorphology_closed_from_evidence (T : TectonicGeomorphologyPackage) (E : TectonicGeomorphologyEvidence T) :
    TectonicGeomorphologyClosed T := by
  exact And.intro E.faultScarpDegradationClosed (And.intro E.riverOffsetClosed (And.intro E.terraceFormationClosed E.upliftRateClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse