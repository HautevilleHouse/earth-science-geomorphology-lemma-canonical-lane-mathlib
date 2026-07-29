import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeomorphologyLemmaCanonicalLaneLean.TopographyPackage

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure StreamPowerIncisionPackage {T : TopographyPackage} where
  incisionCoefficient : ℝ
  drainageAreaExponent : ℝ
  slopeExponent : ℝ
  detachmentLimited : Prop
  thresholdCondition : Prop

structure StreamPowerIncisionEvidence {T : TopographyPackage} (S : StreamPowerIncisionPackage T) where
  incisionCoefficientClosed : S.incisionCoefficient > 0
  drainageAreaExponentClosed : S.drainageAreaExponent > 0
  slopeExponentClosed : S.slopeExponent > 0
  detachmentLimitedClosed : S.detachmentLimited
  thresholdConditionClosed : S.thresholdCondition

def StreamPowerIncisionClosed {T : TopographyPackage} (S : StreamPowerIncisionPackage T) : Prop :=
  (S.incisionCoefficient > 0) ∧ (S.drainageAreaExponent > 0) ∧ (S.slopeExponent > 0) ∧ S.detachmentLimited ∧ S.thresholdCondition

theorem stream_power_incision_closed_from_evidence {T : TopographyPackage}
    (S : StreamPowerIncisionPackage T) (Ev : StreamPowerIncisionEvidence S) :
    StreamPowerIncisionClosed S := by
  exact And.intro Ev.incisionCoefficientClosed
    (And.intro Ev.drainageAreaExponentClosed
      (And.intro Ev.slopeExponentClosed
        (And.intro Ev.detachmentLimitedClosed Ev.thresholdConditionClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse