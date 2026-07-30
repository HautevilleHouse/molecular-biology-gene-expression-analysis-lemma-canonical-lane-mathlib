import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure GeneExpressionAnalysisPackage where
  expressionMatrix : Type u
  differentialExpression : Prop
  normalizedCounts : Prop
  logFoldChange : Prop
  pValueAdjusted : Prop

structure GeneExpressionAnalysisEvidence (G : GeneExpressionAnalysisPackage) where
  differentialExpressionClosed : G.differentialExpression
  normalizedCountsClosed : G.normalizedCounts
  logFoldChangeClosed : G.logFoldChange
  pValueAdjustedClosed : G.pValueAdjusted

def GeneExpressionAnalysisClosed (G : GeneExpressionAnalysisPackage) : Prop :=
  G.differentialExpression ∧ G.normalizedCounts ∧ G.logFoldChange ∧ G.pValueAdjusted

theorem gene_expression_analysis_closed_from_evidence (G : GeneExpressionAnalysisPackage) (E : GeneExpressionAnalysisEvidence G) :
    GeneExpressionAnalysisClosed G := by
  exact And.intro E.differentialExpressionClosed (And.intro E.normalizedCountsClosed (And.intro E.logFoldChangeClosed E.pValueAdjustedClosed))

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse