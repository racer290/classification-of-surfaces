import geometry.manifold.charted_space

section aux

-- variables ( α : Type* ) ( β : Type* ) [topological_space α] [topological_space β]

noncomputable def inl_chart ( α : Type* ) [topological_space α] ( β : Type* ) [topological_space β] [nonempty α] : local_homeomorph (α ⊕ β) α :=
  local_homeomorph.symm $ open_embedding.to_local_homeomorph sum.inl open_embedding_inl
  
noncomputable def inr_chart ( α : Type* ) [topological_space α] ( β : Type* ) [topological_space β] [nonempty β] : local_homeomorph (α ⊕ β) β :=
  local_homeomorph.symm $ open_embedding.to_local_homeomorph sum.inr open_embedding_inr
  
end aux

variables (H : Type*) [topological_space H] [nonempty H]
variables {M₁ : Type*} [topological_space M₁] [charted_space H M₁] [nonempty M₁]
variables {M₂ : Type*} [topological_space M₂] [charted_space H M₂] [nonempty M₂]

noncomputable instance charted_space_sum : charted_space H (M₁ ⊕ M₂) := {
  atlas :=
    { sum_chart : local_homeomorph (M₁ ⊕ M₂) H |
      ∃ chart : local_homeomorph M₁ H,
      chart ∈ atlas H M₁ ∧
      sum_chart = local_homeomorph.trans (inl_chart M₁ M₂) chart } ∪
    { sum_chart : local_homeomorph (M₁ ⊕ M₂) H |
      ∃ chart : local_homeomorph M₂ H,
      chart ∈ atlas H M₂ ∧
      sum_chart = local_homeomorph.trans (inr_chart M₁ M₂) chart },
  chart_at := sum.elim
    (λ m1, (local_homeomorph.trans (inl_chart M₁ M₂) (chart_at H m1)))
    (λ m2, (local_homeomorph.trans (inr_chart M₁ M₂) (chart_at H m2))),
  mem_chart_source := begin
    intro m,
    cases m with m1 m2,
    all_goals {
      rw sum.elim_inl <|> rw sum.elim_inr,
      simp only [set.mem_preimage, local_equiv.trans_source, set.mem_inter_eq, local_homeomorph.coe_coe, local_homeomorph.trans_to_local_equiv],
      split,
      constructor,
      simp only [true_and, set.mem_univ],
    },

    have inl_symm_inl_eq_id : inl_chart M₁ M₂ (sum.inl m1) = m1,
      { apply local_homeomorph.left_inv_on, simp, },
    rw inl_symm_inl_eq_id,
    apply mem_chart_source H m1,

    have inr_symm_inr_eq_id : inr_chart M₁ M₂ (sum.inr m2) = m2,
      { apply local_homeomorph.left_inv_on, simp, },
    rw inr_symm_inr_eq_id,
    apply mem_chart_source H m2,
  end,
  chart_mem_atlas := begin
    intro m,
    simp only [set.mem_union_eq, set.mem_set_of_eq],
    cases m with m1 m2,

    left,
    use chart_at H m1,
    simp only [chart_mem_atlas, sum.elim_inl, eq_self_iff_true, and_self],
    
    right,
    use chart_at H m2,
    simp only [chart_mem_atlas, sum.elim_inr, eq_self_iff_true, and_self],
  end
}

variables (G : structure_groupoid H)

variables [has_groupoid M₁ G] [has_groupoid M₂ G]

instance smooth_groupoid_sum : has_groupoid (M₁ ⊕ M₂) G := {
  compatible := begin
    intros e e',
    dunfold charted_space.atlas,
    simp only [set.mem_union_eq, set.mem_set_of_eq],
    intros he he',
    -- split he and he' into cases and decompose element properties
    -- generated by tidy
    cases he', cases he, work_on_goal 0 { cases he, cases he', cases he'_h, cases he_h }, work_on_goal 1 { cases he, cases he', cases he'_h, cases he_h }, work_on_goal 2 { cases he', cases he, work_on_goal 0 { cases he, cases he'_h, cases he_h }, work_on_goal 1 { cases he, cases he'_h, cases he_h } },
    rw he_h_right,
    rw he'_h_right,
    sorry,
    sorry,
    sorry,
    sorry,
  end
}