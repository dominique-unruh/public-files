theory EPR
  imports QRHL.QRHL
begin

lemma final_goal:
  assumes [simp]: "declared_qvars \<lbrakk>q1,r1,q2,r2\<rbrakk>"
  shows \<open>\<lbrakk>q2, r2\<rbrakk> =\<^sub>\<qq> EPR \<sqinter> \<lbrakk>q1, r1\<rbrakk> =\<^sub>\<qq> EPR 
         \<le> hadamard\<guillemotright>\<lbrakk>r2\<rbrakk> *\<^sub>S hadamard\<guillemotright>\<lbrakk>q1\<rbrakk> *\<^sub>S \<lbrakk>q1, r1\<rbrakk> \<equiv>\<qq> \<lbrakk>q2, r2\<rbrakk>\<close>
  apply (simp add: prepare_for_code)
  by eval

end
