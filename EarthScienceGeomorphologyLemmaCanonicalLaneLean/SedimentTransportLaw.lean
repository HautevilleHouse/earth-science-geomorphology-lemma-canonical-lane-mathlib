import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure SedimentTransportLawPackage (G : GeomorphicProcessPackage) where
  shearStress : Prop
  criticalShearStress : Prop
  entrainmentRate : Prop
  depositionRate : Prop
  exnerEquation : Prop

structure SedimentTransportLawEvidence {G : GeomorphicProcessPackage} (S : SedimentTransportLawPackage G) where
  shearStressClosed : S.shearStress
  criticalShearStressClosed : S.criticalShearStress
  entrainmentRateClosed : S.entrainmentRate
  depositionRateClosed : S.depositionRate
  exnerEquationClosed : S.exnerEquation

def SedimentTransportLawClosed {G : GeomorphicProcessPackage} (S : SedimentTransportLawPackage G) : Prop :=
  S.shearStress ∧ S.criticalShearStress ∧ S.entrainmentRate ∧ S.depositionRate ∧ S.exnerEquation

theorem sediment_transport_law_closed_from_evidence {G : GeomorphicProcessPackage} (S : SedimentTransportLawPackage G) (E : SedimentTransportLawEvidence S) : SedimentTransportLawClosed S := by
  exact And.intro E.shearStressClosed (And.intro E.criticalShearStressClosed (And.intro E.entrainmentRateClosed (And.intro E.depositionRateClosed E.exnerEquationClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse