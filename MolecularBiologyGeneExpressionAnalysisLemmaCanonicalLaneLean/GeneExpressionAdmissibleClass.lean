import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure GeneExpressionObject where
  geneExpressionModel : Type u
  expressionLevels : Type v
  equilibriumState : Prop
  regulationDynamics : Prop

structure GeneExpressionAdmittedObject where
  object : GeneExpressionObject
  expressionEquilibriumReached : Prop
  regulationConvergenceRecorded : Prop
  equilibriumWitness : expressionEquilibriumReached ∨ regulationConvergenceRecorded

def AdmittedClosure (A : GeneExpressionAdmittedObject) : Prop :=
  GeneExpressionWitnessClosed A.object ∧ (A.expressionEquilibriumReached ∨ A.regulationConvergenceRecorded)

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
