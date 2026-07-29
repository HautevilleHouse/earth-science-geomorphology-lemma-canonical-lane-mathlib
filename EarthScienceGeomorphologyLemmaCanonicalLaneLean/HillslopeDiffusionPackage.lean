import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeomorphologyLemmaCanonicalLaneLean.TopographyPackage

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure HillslopeDiffusionPackage {T : TopographyPackage} where
  diffusionCoefficient : ℝ
  linearityAssumption : Prop
  steadyStateCondition : Prop
  timeScaleSeparation : Prop
  couplingWithChannel : Prop

structure HillslopeDiffusionEvidence {T : TopographyPackage} (H : HillslopeDiffusionPackage T) where
  diffusionCoefficientClosed : H.diffusionCoefficient > 0
  linearityAssumptionClosed : H.linearityAssumption
  steadyStateConditionClosed : H.steadyStateCondition
  timeScaleSeparationClosed : H.timeScaleSeparation
  couplingWithChannelClosed : H.couplingWithChannel

def HillslopeDiffusionClosed {T : TopographyPackage} (H : HillslopeDiffusionPackage T) : Prop :=
  (H.diffusionCoefficient > 0) ∧ H.linearityAssumption ∧ H.steadyStateCondition ∧ H.timeScaleSeparation ∧ H.couplingWithChannel

theorem hillslope_diffusion_closed_from_evidence {T : TopographyPackage}
    (H : HillslopeDiffusionPackage T) (Ev : HillslopeDiffusionEvidence H) :
    HillslopeDiffusionClosed H := by
  exact And.intro Ev.diffusionCoefficientClosed
    (And.intro Ev.linearityAssumptionClosed
      (And.intro Ev.steadyStateConditionClosed
        (And.intro Ev.timeScaleSeparationClosed Ev.couplingWithChannelClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse