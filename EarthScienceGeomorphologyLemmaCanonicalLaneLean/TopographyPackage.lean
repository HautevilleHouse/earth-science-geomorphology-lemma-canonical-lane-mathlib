import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure TopographyPackage where
  elevationField : Type u
  slopeDistribution : Prop
  curvatureMetrics : Prop
  drainageNetwork : Prop
  reliefMeasures : Prop

structure TopographyEvidence (T : TopographyPackage) where
  slopeDistributionClosed : T.slopeDistribution
  curvatureMetricsClosed : T.curvatureMetrics
  drainageNetworkClosed : T.drainageNetwork
  reliefMeasuresClosed : T.reliefMeasures

def TopographyClosed (T : TopographyPackage) : Prop :=
  T.slopeDistribution ∧ T.curvatureMetrics ∧ T.drainageNetwork ∧ T.reliefMeasures

theorem topography_closed_from_evidence (T : TopographyPackage) (E : TopographyEvidence T) :
    TopographyClosed T := by
  exact And.intro E.slopeDistributionClosed
    (And.intro E.curvatureMetricsClosed
      (And.intro E.drainageNetworkClosed E.reliefMeasuresClosed))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse