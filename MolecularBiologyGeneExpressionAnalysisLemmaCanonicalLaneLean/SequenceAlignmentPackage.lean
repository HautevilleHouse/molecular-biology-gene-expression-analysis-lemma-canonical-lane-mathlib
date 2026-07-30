import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  alignmentScore : Int
  identityPercentage : Float
  significantAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScoreAboveThreshold : S.alignmentScore > 50
  identityPercentageSufficient : S.identityPercentage > 0.9
  significantAlignmentClosed : S.significantAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  (S.alignmentScore > 50) ∧ (S.identityPercentage > 0.9) ∧ S.significantAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.alignmentScoreAboveThreshold (And.intro E.identityPercentageSufficient E.significantAlignmentClosed)

end MolecularBiologyGeneExpressionAnalysisLemmaCanonicalLaneLean
end HautevilleHouse