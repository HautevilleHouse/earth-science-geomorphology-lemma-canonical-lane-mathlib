import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure EarthSurfaceProcessPackage (T : TopographyPackage) where
  erosionAdvection : Prop
  sedimentTransport : Prop
  depositionRegime : Prop
  weatherForcing : Prop
  processRateLaws : Prop

structure EarthSurfaceProcessEvidence {T : TopographyPackage} (E : EarthSurfaceProcessPackage T) where
  erosionAdvectionClosed : E.erosionAdvection
  sedimentTransportClosed : E.sedimentTransport
  depositionRegimeClosed : E.depositionRegime
  weatherForcingClosed : E.weatherForcing
  processRateLawsClosed : E.processRateLaws

def EarthSurfaceProcessClosed {T : TopographyPackage} (E : EarthSurfaceProcessPackage T) : Prop :=
  E.erosionAdvection ∧ E.sedimentTransport ∧ E.depositionRegime ∧ E.weatherForcing ∧ E.processRateLaws

theorem earth_surface_process_closed_from_evidence {T : TopographyPackage}
    (E : EarthSurfaceProcessPackage T) (Ev : EarthSurfaceProcessEvidence E) :
    EarthSurfaceProcessClosed E := by
  exact And.intro Ev.erosionAdvectionClosed
    (And.intro Ev.sedimentTransportClosed
      (And.intro Ev.depositionRegimeClosed
        (And.intro Ev.weatherForcingClosed Ev.processRateLawsClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse