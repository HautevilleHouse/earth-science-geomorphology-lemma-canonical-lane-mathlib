import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure HillslopeProcessPackage where
  soilCreep : Prop
  landslideTrigger : Prop
  weatheringRate : Prop
  slopeStability : Prop

structure HillslopeProcessEvidence (H : HillslopeProcessPackage) where
  soilCreepClosed : H.soilCreep
  landslideTriggerClosed : H.landslideTrigger
  weatheringRateClosed : H.weatheringRate
  slopeStabilityClosed : H.slopeStability

def HillslopeProcessClosed (H : HillslopeProcessPackage) : Prop :=
  H.soilCreep ∧ H.landslideTrigger ∧ H.weatheringRate ∧ H.slopeStability

theorem hillslope_process_closed_from_evidence (H : HillslopeProcessPackage) (E : HillslopeProcessEvidence H) :
    HillslopeProcessClosed H := by
  exact And.intro E.soilCreepClosed (And.intro E.landslideTriggerClosed (And.intro E.weatheringRateClosed E.slopeStabilityClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse