import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyLemmaCanonicalLaneLean

structure HillslopeDiffusionEquationPackage (G : GeomorphicProcessPackage) where
  diffusivityCoefficient : Prop
  curvatureDrivenFlux : Prop
  linearDiffusionEquation : Prop
  nonlinearDiffusionEquation : Prop
  steadyStateSolution : Prop

structure HillslopeDiffusionEquationEvidence {G : GeomorphicProcessPackage} (H : HillslopeDiffusionEquationPackage G) where
  diffusivityCoefficientClosed : H.diffusivityCoefficient
  curvatureDrivenFluxClosed : H.curvatureDrivenFlux
  linearDiffusionEquationClosed : H.linearDiffusionEquation
  nonlinearDiffusionEquationClosed : H.nonlinearDiffusionEquation
  steadyStateSolutionClosed : H.steadyStateSolution

def HillslopeDiffusionEquationClosed {G : GeomorphicProcessPackage} (H : HillslopeDiffusionEquationPackage G) : Prop :=
  H.diffusivityCoefficient ∧ H.curvatureDrivenFlux ∧ H.linearDiffusionEquation ∧ H.nonlinearDiffusionEquation ∧ H.steadyStateSolution

theorem hillslope_diffusion_equation_closed_from_evidence {G : GeomorphicProcessPackage} (H : HillslopeDiffusionEquationPackage G) (E : HillslopeDiffusionEquationEvidence H) : HillslopeDiffusionEquationClosed H := by
  exact And.intro E.diffusivityCoefficientClosed (And.intro E.curvatureDrivenFluxClosed (And.intro E.linearDiffusionEquationClosed (And.intro E.nonlinearDiffusionEquationClosed E.steadyStateSolutionClosed)))

end EarthScienceGeomorphologyLemmaCanonicalLaneLean
end HautevilleHouse