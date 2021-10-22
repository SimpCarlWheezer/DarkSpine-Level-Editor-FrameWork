function dks_draw_vertex_alphaoff() 
{
	dks_matrix_update();
	matrix_set(matrix_world, mtx);
	gpu_set_zwriteenable(false);

	if (have_texture)
	{
	 gpu_set_blendenable(0);
	 vertex_submit(v_buffer, pr_trianglelist, v_texture);
	 gpu_set_blendenable(1);
	}
	if (have_path_texture)
	{
	 vertex_submit(buffer_path, pr_trianglelist, p_texture);
	}
	gpu_set_zwriteenable(true);
	matrix_set(matrix_world, global.mat_world);
}