import EarthScienceGeomorphologyLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure TectonicProcessPackage where
  plateMotion : Type
  upliftRate : Prop
  faultScarpDevelopment : Prop
  orogenyCycle : Prop
  basinSubsidence : Prop

structure TectonicProcessEvidence (T : TectonicProcessPackage) where
  upliftRateClosed : T.upliftRate
  faultScarpDevelopmentClosed : T.faultScarpDevelopment
  orogenyCycleClosed : T.orogenyCycle
  basinSubsidenceClosed : T.basinSubsidence

def TectonicProcessClosed (T : TectonicProcessPackage) : Prop :=
  T.upliftRate ∧ T.faultScarpDevelopment ∧ T.orogenyCycle ∧ T.basinSubsidence

theorem tectonic_process_closed_from_evidence (T : TectonicProcessPackage)
    (E : TectonicProcessEvidence T) : TectonicProcessClosed T := by
  exact And.intro E.upliftRateClosed
    (And.intro E.faultScarpDevelopmentClosed
      (And.intro E.orogenyCycleClosed E.basinSubsidenceClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse