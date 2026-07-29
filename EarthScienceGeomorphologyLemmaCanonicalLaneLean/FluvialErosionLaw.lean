import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure FluvialErosionLawPackage (G : GeomorphicProcessPackage) where
  dischargeExponent : Prop
  slopeExponent : Prop
  erosionRateConstant : Prop
  incisionThreshold : Prop
  transientIncisionEquation : Prop

structure FluvialErosionLawEvidence {G : GeomorphicProcessPackage} (F : FluvialErosionLawPackage G) where
  dischargeExponentClosed : F.dischargeExponent
  slopeExponentClosed : F.slopeExponent
  erosionRateConstantClosed : F.erosionRateConstant
  incisionThresholdClosed : F.incisionThreshold
  transientIncisionEquationClosed : F.transientIncisionEquation

def FluvialErosionLawClosed {G : GeomorphicProcessPackage} (F : FluvialErosionLawPackage G) : Prop :=
  F.dischargeExponent ∧ F.slopeExponent ∧ F.erosionRateConstant ∧ F.incisionThreshold ∧ F.transientIncisionEquation

theorem fluvial_erosion_law_closed_from_evidence {G : GeomorphicProcessPackage} (F : FluvialErosionLawPackage G) (E : FluvialErosionLawEvidence F) : FluvialErosionLawClosed F := by
  exact And.intro E.dischargeExponentClosed (And.intro E.slopeExponentClosed (And.intro E.erosionRateConstantClosed (And.intro E.incisionThresholdClosed E.transientIncisionEquationClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse