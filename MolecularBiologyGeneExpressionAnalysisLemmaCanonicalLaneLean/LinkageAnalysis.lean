import HautevilleHouse.MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure LinkageAnalysisPackage where
  loci : Type u
  recombinationFraction : ℚ
  lodScore : ℚ
  linkageEvidence : Prop
  recombinationFractionClosed : linkageEvidence → recombinationFraction ≠ 0.5

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  lodScorePositive : L.lodScore > 0
  linkageEvidenceClosed : L.linkageEvidence

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEvidence ∧ L.lodScore > 0

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkageEvidenceClosed E.lodScorePositive

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse