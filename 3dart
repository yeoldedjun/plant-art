     for j in range(img_array.shape[1] - 1):
            v0 = i * img_array.shape[1] + j
            v1 = v0 + 1
            v2 = (i + 1) * img_array.shape[1] + j
            v3 = v2 + 1
            faces.append([v0, v1, v3])
            faces.append([v0, v3, v2])

    faces = np.array(faces)

    # Create the mesh
    mesh_data = mesh.Mesh(np.zeros(faces.shape[0], dtype=mesh.Mesh.dtype))
    for i, f in enumerate(faces):
        for j in range(3):
            mesh_data.vectors[i][j] = verts[f[j], :]

    # Write the mesh to file
    mesh_data.save(stl_path)

# Example usage:
png_to_stl("input_image.png", "output_model.stl", height_scale=0.1)
