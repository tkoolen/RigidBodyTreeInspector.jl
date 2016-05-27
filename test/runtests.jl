using IJulia
using RigidBodyTreeInspector

let
    acrobot_vis = parse_urdf("urdf/Acrobot.urdf")
end

jupyter = IJulia.jupyter
notebook = "../examples/demo.ipynb"
run(`$jupyter nbconvert --to notebook --execute $notebook --output $notebook`)
