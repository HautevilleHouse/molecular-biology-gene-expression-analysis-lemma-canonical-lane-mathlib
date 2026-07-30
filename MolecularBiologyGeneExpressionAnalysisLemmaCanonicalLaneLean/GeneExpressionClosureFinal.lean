import MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

def ConstrainedGeneExpressionClosure (A : GeneExpressionAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gene_expression_endgame (A : GeneExpressionAdmittedObject) :
    ConstrainedGeneExpressionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse
