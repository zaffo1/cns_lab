�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
simple_rnn_1/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*&
shared_namesimple_rnn_1/Variable

)simple_rnn_1/Variable/Read/ReadVariableOpReadVariableOpsimple_rnn_1/Variable*
_output_shapes

:n*
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

:n*
dtype0
�
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

:n*
dtype0
�
*Adam/v/simple_rnn_1/simple_rnn_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*;
shared_name,*Adam/v/simple_rnn_1/simple_rnn_cell_3/bias
�
>Adam/v/simple_rnn_1/simple_rnn_cell_3/bias/Read/ReadVariableOpReadVariableOp*Adam/v/simple_rnn_1/simple_rnn_cell_3/bias*
_output_shapes
:n*
dtype0
�
*Adam/m/simple_rnn_1/simple_rnn_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*;
shared_name,*Adam/m/simple_rnn_1/simple_rnn_cell_3/bias
�
>Adam/m/simple_rnn_1/simple_rnn_cell_3/bias/Read/ReadVariableOpReadVariableOp*Adam/m/simple_rnn_1/simple_rnn_cell_3/bias*
_output_shapes
:n*
dtype0
�
6Adam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*G
shared_name86Adam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel
�
JAdam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Adam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel*
_output_shapes

:nn*
dtype0
�
6Adam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*G
shared_name86Adam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel
�
JAdam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Adam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel*
_output_shapes

:nn*
dtype0
�
,Adam/v/simple_rnn_1/simple_rnn_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*=
shared_name.,Adam/v/simple_rnn_1/simple_rnn_cell_3/kernel
�
@Adam/v/simple_rnn_1/simple_rnn_cell_3/kernel/Read/ReadVariableOpReadVariableOp,Adam/v/simple_rnn_1/simple_rnn_cell_3/kernel*
_output_shapes

:n*
dtype0
�
,Adam/m/simple_rnn_1/simple_rnn_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*=
shared_name.,Adam/m/simple_rnn_1/simple_rnn_cell_3/kernel
�
@Adam/m/simple_rnn_1/simple_rnn_cell_3/kernel/Read/ReadVariableOpReadVariableOp,Adam/m/simple_rnn_1/simple_rnn_cell_3/kernel*
_output_shapes

:n*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
#simple_rnn_1/simple_rnn_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:n*4
shared_name%#simple_rnn_1/simple_rnn_cell_3/bias
�
7simple_rnn_1/simple_rnn_cell_3/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell_3/bias*
_output_shapes
:n*
dtype0
�
/simple_rnn_1/simple_rnn_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:nn*@
shared_name1/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel
�
Csimple_rnn_1/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel*
_output_shapes

:nn*
dtype0
�
%simple_rnn_1/simple_rnn_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*6
shared_name'%simple_rnn_1/simple_rnn_cell_3/kernel
�
9simple_rnn_1/simple_rnn_cell_3/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_1/simple_rnn_cell_3/kernel*
_output_shapes

:n*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:n*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:n*
dtype0
�
"serving_default_simple_rnn_1_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCall"serving_default_simple_rnn_1_input%simple_rnn_1/simple_rnn_cell_3/kernel#simple_rnn_1/simple_rnn_cell_3/biassimple_rnn_1/Variable/simple_rnn_1/simple_rnn_cell_3/recurrent_kerneldense_1/kerneldense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_46914

NoOpNoOp
�-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�,
value�,B�, B�,
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
$trace_0
%trace_1
&trace_2
'trace_3* 
6
(trace_0
)trace_1
*trace_2
+trace_3* 
* 
�
,
_variables
-_iterations
._learning_rate
/_index_dict
0
_momentums
1_velocities
2_update_step_xla*

3serving_default* 

0
1
2*

0
1
2*
* 
�

4states
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
:trace_0
;trace_1
<trace_2
=trace_3* 
6
>trace_0
?trace_1
@trace_2
Atrace_3* 
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H_random_generator

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ntrace_0* 

Otrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_1/simple_rnn_cell_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell_3/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

P0
Q1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
R
-0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
R0
T1
V2
X3
Z4*
'
S0
U1
W2
Y3
[4*
* 
* 

\0*
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
* 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*
6
btrace_0
ctrace_1
dtrace_2
etrace_3* 
6
ftrace_0
gtrace_1
htrace_2
itrace_3* 
* 
* 
* 
* 
* 
* 
* 
* 
8
j	variables
k	keras_api
	ltotal
	mcount*
H
n	variables
o	keras_api
	ptotal
	qcount
r
_fn_kwargs*
wq
VARIABLE_VALUE,Adam/m/simple_rnn_1/simple_rnn_cell_3/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/v/simple_rnn_1/simple_rnn_cell_3/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE6Adam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE6Adam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/m/simple_rnn_1/simple_rnn_cell_3/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/v/simple_rnn_1/simple_rnn_cell_3/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_1/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_1/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_1/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEsimple_rnn_1/VariableBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

l0
m1*

j	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

p0
q1*

n	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias%simple_rnn_1/simple_rnn_cell_3/kernel/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel#simple_rnn_1/simple_rnn_cell_3/bias	iterationlearning_rate,Adam/m/simple_rnn_1/simple_rnn_cell_3/kernel,Adam/v/simple_rnn_1/simple_rnn_cell_3/kernel6Adam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel6Adam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel*Adam/m/simple_rnn_1/simple_rnn_cell_3/bias*Adam/v/simple_rnn_1/simple_rnn_cell_3/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biassimple_rnn_1/Variabletotal_1count_1totalcountConst*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_47988
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias%simple_rnn_1/simple_rnn_cell_3/kernel/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel#simple_rnn_1/simple_rnn_cell_3/bias	iterationlearning_rate,Adam/m/simple_rnn_1/simple_rnn_cell_3/kernel,Adam/v/simple_rnn_1/simple_rnn_cell_3/kernel6Adam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel6Adam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel*Adam/m/simple_rnn_1/simple_rnn_cell_3/bias*Adam/v/simple_rnn_1/simple_rnn_cell_3/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biassimple_rnn_1/Variabletotal_1count_1totalcount*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_48064��
�
�
B__inference_dense_1_layer_call_and_return_conditional_losses_46625

inputs3
!tensordot_readvariableop_resource:n-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������n�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������n
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46167

inputs
states:n0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n4
"matmul_1_readvariableop_1_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n^
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes

:n*
dtype0|
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_122
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:&"
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
while_cond_46182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_46182___redundant_placeholder03
/while_while_cond_46182___redundant_placeholder13
/while_while_cond_46182___redundant_placeholder23
/while_while_cond_46182___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
��
�
__inference__traced_save_47988
file_prefix7
%read_disablecopyonread_dense_1_kernel:n3
%read_1_disablecopyonread_dense_1_bias:P
>read_2_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_kernel:nZ
Hread_3_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel:nnJ
<read_4_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_bias:n,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: W
Eread_7_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_kernel:nW
Eread_8_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_kernel:na
Oread_9_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel:nnb
Pread_10_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel:nnR
Dread_11_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_bias:nR
Dread_12_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_bias:nA
/read_13_disablecopyonread_adam_m_dense_1_kernel:nA
/read_14_disablecopyonread_adam_v_dense_1_kernel:n;
-read_15_disablecopyonread_adam_m_dense_1_bias:;
-read_16_disablecopyonread_adam_v_dense_1_bias:A
/read_17_disablecopyonread_simple_rnn_1_variable:n+
!read_18_disablecopyonread_total_1: +
!read_19_disablecopyonread_count_1: )
read_20_disablecopyonread_total: )
read_21_disablecopyonread_count: 
savev2_const
identity_45��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:n*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:na

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:ny
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead>read_2_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp>read_2_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:n*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:nc

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:n�
Read_3/DisableCopyOnReadDisableCopyOnReadHread_3_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpHread_3_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:nn*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:nnc

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:nn�
Read_4/DisableCopyOnReadDisableCopyOnRead<read_4_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp<read_4_disablecopyonread_simple_rnn_1_simple_rnn_cell_3_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:n*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:n_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:nv
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp"read_5_disablecopyonread_iteration^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_learning_rate^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_7/DisableCopyOnReadDisableCopyOnReadEread_7_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOpEread_7_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:n*
dtype0n
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ne
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

:n�
Read_8/DisableCopyOnReadDisableCopyOnReadEread_8_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpEread_8_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:n*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ne
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:n�
Read_9/DisableCopyOnReadDisableCopyOnReadOread_9_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOpOread_9_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:nn*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:nne
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:nn�
Read_10/DisableCopyOnReadDisableCopyOnReadPread_10_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpPread_10_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:nn*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:nne
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:nn�
Read_11/DisableCopyOnReadDisableCopyOnReadDread_11_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpDread_11_disablecopyonread_adam_m_simple_rnn_1_simple_rnn_cell_3_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:n*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:na
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:n�
Read_12/DisableCopyOnReadDisableCopyOnReadDread_12_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpDread_12_disablecopyonread_adam_v_simple_rnn_1_simple_rnn_cell_3_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:n*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:na
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:n�
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_m_dense_1_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:n*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ne
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:n�
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_adam_v_dense_1_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:n*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ne
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:n�
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_adam_m_dense_1_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_v_dense_1_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_simple_rnn_1_variable"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_simple_rnn_1_variable^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:n*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:ne
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:nv
Read_18/DisableCopyOnReadDisableCopyOnRead!read_18_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp!read_18_disablecopyonread_total_1^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_19/DisableCopyOnReadDisableCopyOnRead!read_19_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp!read_19_disablecopyonread_count_1^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_20/DisableCopyOnReadDisableCopyOnReadread_20_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOpread_20_disablecopyonread_total^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_21/DisableCopyOnReadDisableCopyOnReadread_21_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOpread_21_disablecopyonread_count^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *%
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_44Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_45IdentityIdentity_44:output:0^NoOp*
T0*
_output_shapes
: �	
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_45Identity_45:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
1__inference_simple_rnn_cell_3_layer_call_fn_47761

inputs
states_0
unknown:n
	unknown_0:n
	unknown_1:nn
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46352f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:nh

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes

:n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
::n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:HD

_output_shapes

:n
"
_user_specified_name
states_0:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47833

inputs
states_00
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0f
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
::n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:HD

_output_shapes

:n
"
_user_specified_name
states_0:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
while_cond_47495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_47495___redundant_placeholder03
/while_while_cond_47495___redundant_placeholder13
/while_while_cond_47495___redundant_placeholder23
/while_while_cond_47495___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�z
�
 __inference__wrapped_model_46130
simple_rnn_1_input\
Jsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource:nY
Ksequential_1_simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resource:n^
Lsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource:n`
Nsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nnH
6sequential_1_dense_1_tensordot_readvariableop_resource:nB
4sequential_1_dense_1_biasadd_readvariableop_resource:
identity��+sequential_1/dense_1/BiasAdd/ReadVariableOp�-sequential_1/dense_1/Tensordot/ReadVariableOp�*sequential_1/simple_rnn_1/AssignVariableOp�(sequential_1/simple_rnn_1/ReadVariableOp�Bsequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp�Asequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp�Csequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp�Esequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�sequential_1/simple_rnn_1/while}
(sequential_1/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_1/simple_rnn_1/transpose	Transposesimple_rnn_1_input1sequential_1/simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:����������
sequential_1/simple_rnn_1/ShapeShape'sequential_1/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
::��w
-sequential_1/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_1/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_1/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_1/simple_rnn_1/strided_sliceStridedSlice(sequential_1/simple_rnn_1/Shape:output:06sequential_1/simple_rnn_1/strided_slice/stack:output:08sequential_1/simple_rnn_1/strided_slice/stack_1:output:08sequential_1/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_1/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
'sequential_1/simple_rnn_1/TensorArrayV2TensorListReserve>sequential_1/simple_rnn_1/TensorArrayV2/element_shape:output:00sequential_1/simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Osequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Asequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_1/simple_rnn_1/transpose:y:0Xsequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���y
/sequential_1/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_1/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_1/simple_rnn_1/strided_slice_1StridedSlice'sequential_1/simple_rnn_1/transpose:y:08sequential_1/simple_rnn_1/strided_slice_1/stack:output:0:sequential_1/simple_rnn_1/strided_slice_1/stack_1:output:0:sequential_1/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
Asequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpJsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
2sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMulMatMul2sequential_1/simple_rnn_1/strided_slice_1:output:0Isequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
Bsequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpKsequential_1_simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
3sequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAddBiasAdd<sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul:product:0Jsequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
Csequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpLsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
Esequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOpNsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
4sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1MatMulKsequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0Msequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
/sequential_1/simple_rnn_1/simple_rnn_cell_3/addAddV2<sequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAdd:output:0>sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:n�
0sequential_1/simple_rnn_1/simple_rnn_cell_3/TanhTanh3sequential_1/simple_rnn_1/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
7sequential_1/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
)sequential_1/simple_rnn_1/TensorArrayV2_1TensorListReserve@sequential_1/simple_rnn_1/TensorArrayV2_1/element_shape:output:00sequential_1/simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���`
sequential_1/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : �
(sequential_1/simple_rnn_1/ReadVariableOpReadVariableOpLsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0}
2sequential_1/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������n
,sequential_1/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_1/simple_rnn_1/whileWhile5sequential_1/simple_rnn_1/while/loop_counter:output:0;sequential_1/simple_rnn_1/while/maximum_iterations:output:0'sequential_1/simple_rnn_1/time:output:02sequential_1/simple_rnn_1/TensorArrayV2_1:handle:00sequential_1/simple_rnn_1/ReadVariableOp:value:00sequential_1/simple_rnn_1/strided_slice:output:0Qsequential_1/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resourceKsequential_1_simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resourceNsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *6
body.R,
*sequential_1_simple_rnn_1_while_body_46038*6
cond.R,
*sequential_1_simple_rnn_1_while_cond_46037*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
Jsequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
<sequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_1/simple_rnn_1/while:output:3Ssequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0�
/sequential_1/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1sequential_1/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_1/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_1/simple_rnn_1/strided_slice_2StridedSliceEsequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:08sequential_1/simple_rnn_1/strided_slice_2/stack:output:0:sequential_1/simple_rnn_1/strided_slice_2/stack_1:output:0:sequential_1/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_mask
*sequential_1/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_1/simple_rnn_1/transpose_1	TransposeEsequential_1/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03sequential_1/simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
*sequential_1/simple_rnn_1/AssignVariableOpAssignVariableOpLsequential_1_simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource(sequential_1/simple_rnn_1/while:output:4)^sequential_1/simple_rnn_1/ReadVariableOpD^sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
-sequential_1/dense_1/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_1_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0m
#sequential_1/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
$sequential_1/dense_1/Tensordot/ShapeShape)sequential_1/simple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
::��n
,sequential_1/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_1/dense_1/Tensordot/GatherV2GatherV2-sequential_1/dense_1/Tensordot/Shape:output:0,sequential_1/dense_1/Tensordot/free:output:05sequential_1/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)sequential_1/dense_1/Tensordot/GatherV2_1GatherV2-sequential_1/dense_1/Tensordot/Shape:output:0,sequential_1/dense_1/Tensordot/axes:output:07sequential_1/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
#sequential_1/dense_1/Tensordot/ProdProd0sequential_1/dense_1/Tensordot/GatherV2:output:0-sequential_1/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
%sequential_1/dense_1/Tensordot/Prod_1Prod2sequential_1/dense_1/Tensordot/GatherV2_1:output:0/sequential_1/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential_1/dense_1/Tensordot/concatConcatV2,sequential_1/dense_1/Tensordot/free:output:0,sequential_1/dense_1/Tensordot/axes:output:03sequential_1/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
$sequential_1/dense_1/Tensordot/stackPack,sequential_1/dense_1/Tensordot/Prod:output:0.sequential_1/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
(sequential_1/dense_1/Tensordot/transpose	Transpose)sequential_1/simple_rnn_1/transpose_1:y:0.sequential_1/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������n�
&sequential_1/dense_1/Tensordot/ReshapeReshape,sequential_1/dense_1/Tensordot/transpose:y:0-sequential_1/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
%sequential_1/dense_1/Tensordot/MatMulMatMul/sequential_1/dense_1/Tensordot/Reshape:output:05sequential_1/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
&sequential_1/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_1/dense_1/Tensordot/concat_1ConcatV20sequential_1/dense_1/Tensordot/GatherV2:output:0/sequential_1/dense_1/Tensordot/Const_2:output:05sequential_1/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential_1/dense_1/TensordotReshape/sequential_1/dense_1/Tensordot/MatMul:product:00sequential_1/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/dense_1/BiasAddBiasAdd'sequential_1/dense_1/Tensordot:output:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������x
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp.^sequential_1/dense_1/Tensordot/ReadVariableOp+^sequential_1/simple_rnn_1/AssignVariableOp)^sequential_1/simple_rnn_1/ReadVariableOpC^sequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOpB^sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOpD^sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOpF^sequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1 ^sequential_1/simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2^
-sequential_1/dense_1/Tensordot/ReadVariableOp-sequential_1/dense_1/Tensordot/ReadVariableOp2X
*sequential_1/simple_rnn_1/AssignVariableOp*sequential_1/simple_rnn_1/AssignVariableOp2T
(sequential_1/simple_rnn_1/ReadVariableOp(sequential_1/simple_rnn_1/ReadVariableOp2�
Bsequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOpBsequential_1/simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp2�
Asequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOpAsequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp2�
Esequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1Esequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_12�
Csequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOpCsequential_1/simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp2B
sequential_1/simple_rnn_1/whilesequential_1/simple_rnn_1/while:_ [
+
_output_shapes
:���������
,
_user_specified_namesimple_rnn_1_input
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47816

inputs
states:n0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n4
"matmul_1_readvariableop_1_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n^
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes

:n*
dtype0|
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_122
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:&"
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
,__inference_simple_rnn_1_layer_call_fn_47230
inputs_0
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46394s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
simple_rnn_1_while_cond_471116
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_26
2simple_rnn_1_while_less_simple_rnn_1_strided_sliceM
Isimple_rnn_1_while_simple_rnn_1_while_cond_47111___redundant_placeholder0M
Isimple_rnn_1_while_simple_rnn_1_while_cond_47111___redundant_placeholder1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_47111___redundant_placeholder2M
Isimple_rnn_1_while_simple_rnn_1_while_cond_47111___redundant_placeholder3
simple_rnn_1_while_identity
�
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder2simple_rnn_1_while_less_simple_rnn_1_strided_slice*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :]Y

_output_shapes
: 
?
_user_specified_name'%simple_rnn_1/while/maximum_iterations:W S

_output_shapes
: 
9
_user_specified_name!simple_rnn_1/while/loop_counter
�<
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47562

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:n?
1simple_rnn_cell_3_biasadd_readvariableop_resource:nD
2simple_rnn_cell_3_matmul_1_readvariableop_resource:nF
4simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn
identity��AssignVariableOp�ReadVariableOp�(simple_rnn_cell_3/BiasAdd/ReadVariableOp�'simple_rnn_cell_3/MatMul/ReadVariableOp�)simple_rnn_cell_3/MatMul_1/ReadVariableOp�+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
simple_rnn_cell_3/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOp4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
simple_rnn_cell_3/MatMul_1MatMul1simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:03simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nb
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : �
ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_47496*
condR
while_cond_47495*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp,^simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2Z
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1+simple_rnn_cell_3/MatMul_1/ReadVariableOp_12V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�,
�
while_body_47292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nG
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nL
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:nE
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:nJ
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_3/MatMul/ReadVariableOp�/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nn
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*
_output_shapes

:n�

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
simple_rnn_1_while_cond_469836
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_26
2simple_rnn_1_while_less_simple_rnn_1_strided_sliceM
Isimple_rnn_1_while_simple_rnn_1_while_cond_46983___redundant_placeholder0M
Isimple_rnn_1_while_simple_rnn_1_while_cond_46983___redundant_placeholder1M
Isimple_rnn_1_while_simple_rnn_1_while_cond_46983___redundant_placeholder2M
Isimple_rnn_1_while_simple_rnn_1_while_cond_46983___redundant_placeholder3
simple_rnn_1_while_identity
�
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder2simple_rnn_1_while_less_simple_rnn_1_strided_slice*
T0*
_output_shapes
: e
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :]Y

_output_shapes
: 
?
_user_specified_name'%simple_rnn_1/while/maximum_iterations:W S

_output_shapes
: 
9
_user_specified_name!simple_rnn_1/while/loop_counter
�
�
*sequential_1_simple_rnn_1_while_cond_46037P
Lsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_loop_counterV
Rsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_maximum_iterations/
+sequential_1_simple_rnn_1_while_placeholder1
-sequential_1_simple_rnn_1_while_placeholder_11
-sequential_1_simple_rnn_1_while_placeholder_2P
Lsequential_1_simple_rnn_1_while_less_sequential_1_simple_rnn_1_strided_sliceg
csequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_46037___redundant_placeholder0g
csequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_46037___redundant_placeholder1g
csequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_46037___redundant_placeholder2g
csequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_cond_46037___redundant_placeholder3,
(sequential_1_simple_rnn_1_while_identity
�
$sequential_1/simple_rnn_1/while/LessLess+sequential_1_simple_rnn_1_while_placeholderLsequential_1_simple_rnn_1_while_less_sequential_1_simple_rnn_1_strided_slice*
T0*
_output_shapes
: 
(sequential_1/simple_rnn_1/while/IdentityIdentity(sequential_1/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_1_simple_rnn_1_while_identity1sequential_1/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :jf

_output_shapes
: 
L
_user_specified_name42sequential_1/simple_rnn_1/while/maximum_iterations:d `

_output_shapes
: 
F
_user_specified_name.,sequential_1/simple_rnn_1/while/loop_counter
�
�
,__inference_simple_rnn_1_layer_call_fn_47217
inputs_0
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46263s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0
�E
�
*sequential_1_simple_rnn_1_while_body_46038P
Lsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_loop_counterV
Rsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_maximum_iterations/
+sequential_1_simple_rnn_1_while_placeholder1
-sequential_1_simple_rnn_1_while_placeholder_11
-sequential_1_simple_rnn_1_while_placeholder_2M
Isequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_slice_0�
�sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:na
Ssequential_1_simple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nf
Tsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn,
(sequential_1_simple_rnn_1_while_identity.
*sequential_1_simple_rnn_1_while_identity_1.
*sequential_1_simple_rnn_1_while_identity_2.
*sequential_1_simple_rnn_1_while_identity_3.
*sequential_1_simple_rnn_1_while_identity_4K
Gsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_slice�
�sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorb
Psequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource:n_
Qsequential_1_simple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource:nd
Rsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��Hsequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�Gsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp�Isequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
Qsequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
Csequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0+sequential_1_simple_rnn_1_while_placeholderZsequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
Gsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpRsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
8sequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMulMatMulJsequential_1/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
Hsequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpSsequential_1_simple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
9sequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAddBiasAddBsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul:product:0Psequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
Isequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpTsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
:sequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1MatMul-sequential_1_simple_rnn_1_while_placeholder_2Qsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
5sequential_1/simple_rnn_1/while/simple_rnn_cell_3/addAddV2Bsequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAdd:output:0Dsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:n�
6sequential_1/simple_rnn_1/while/simple_rnn_cell_3/TanhTanh9sequential_1/simple_rnn_1/while/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
Dsequential_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_1_simple_rnn_1_while_placeholder_1+sequential_1_simple_rnn_1_while_placeholder:sequential_1/simple_rnn_1/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���g
%sequential_1/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_1/simple_rnn_1/while/addAddV2+sequential_1_simple_rnn_1_while_placeholder.sequential_1/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_1/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_1/simple_rnn_1/while/add_1AddV2Lsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_loop_counter0sequential_1/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
(sequential_1/simple_rnn_1/while/IdentityIdentity)sequential_1/simple_rnn_1/while/add_1:z:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
*sequential_1/simple_rnn_1/while/Identity_1IdentityRsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_while_maximum_iterations%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
*sequential_1/simple_rnn_1/while/Identity_2Identity'sequential_1/simple_rnn_1/while/add:z:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
*sequential_1/simple_rnn_1/while/Identity_3IdentityTsequential_1/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
*sequential_1/simple_rnn_1/while/Identity_4Identity:sequential_1/simple_rnn_1/while/simple_rnn_cell_3/Tanh:y:0%^sequential_1/simple_rnn_1/while/NoOp*
T0*
_output_shapes

:n�
$sequential_1/simple_rnn_1/while/NoOpNoOpI^sequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpH^sequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOpJ^sequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_1_simple_rnn_1_while_identity_13sequential_1/simple_rnn_1/while/Identity_1:output:0"a
*sequential_1_simple_rnn_1_while_identity_23sequential_1/simple_rnn_1/while/Identity_2:output:0"a
*sequential_1_simple_rnn_1_while_identity_33sequential_1/simple_rnn_1/while/Identity_3:output:0"a
*sequential_1_simple_rnn_1_while_identity_43sequential_1/simple_rnn_1/while/Identity_4:output:0"]
(sequential_1_simple_rnn_1_while_identity1sequential_1/simple_rnn_1/while/Identity:output:0"�
Gsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_sliceIsequential_1_simple_rnn_1_while_sequential_1_simple_rnn_1_strided_slice_0"�
Qsequential_1_simple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resourceSsequential_1_simple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"�
Rsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceTsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"�
Psequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resourceRsequential_1_simple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"�
�sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor�sequential_1_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2�
Hsequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpHsequential_1/simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2�
Gsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOpGsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp2�
Isequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpIsequential_1/simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :jf

_output_shapes
: 
L
_user_specified_name42sequential_1/simple_rnn_1/while/maximum_iterations:d `

_output_shapes
: 
F
_user_specified_name.,sequential_1/simple_rnn_1/while/loop_counter
�
�
while_cond_47393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_47393___redundant_placeholder03
/while_while_cond_47393___redundant_placeholder13
/while_while_cond_47393___redundant_placeholder23
/while_while_cond_47393___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
while_cond_46669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_46669___redundant_placeholder03
/while_while_cond_46669___redundant_placeholder13
/while_while_cond_46669___redundant_placeholder23
/while_while_cond_46669___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46298

inputs
states:n0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n4
"matmul_1_readvariableop_1_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n^
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes

:n*
dtype0|
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_122
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:&"
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�,
�
while_body_46670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nG
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nL
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:nE
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:nJ
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_3/MatMul/ReadVariableOp�/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nn
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*
_output_shapes

:n�

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�/
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46263

inputs)
simple_rnn_cell_3_46168:n)
simple_rnn_cell_3_46170:n%
simple_rnn_cell_3_46172:n)
simple_rnn_cell_3_46174:nn
identity��AssignVariableOp�ReadVariableOp�)simple_rnn_cell_3/StatefulPartitionedCall�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0simple_rnn_cell_3_46168simple_rnn_cell_3_46170simple_rnn_cell_3_46172simple_rnn_cell_3_46174*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46167n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : f
ReadVariableOpReadVariableOpsimple_rnn_cell_3_46168*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_46170simple_rnn_cell_3_46172simple_rnn_cell_3_46174*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_46183*
condR
while_cond_46182*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOpsimple_rnn_cell_3_46168while:output:4^ReadVariableOp*^simple_rnn_cell_3/StatefulPartitionedCall*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�<
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46585

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:n?
1simple_rnn_cell_3_biasadd_readvariableop_resource:nD
2simple_rnn_cell_3_matmul_1_readvariableop_resource:nF
4simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn
identity��AssignVariableOp�ReadVariableOp�(simple_rnn_cell_3/BiasAdd/ReadVariableOp�'simple_rnn_cell_3/MatMul/ReadVariableOp�)simple_rnn_cell_3/MatMul_1/ReadVariableOp�+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
simple_rnn_cell_3/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOp4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
simple_rnn_cell_3/MatMul_1MatMul1simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:03simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nb
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : �
ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_46519*
condR
while_cond_46518*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp,^simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2Z
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1+simple_rnn_cell_3/MatMul_1/ReadVariableOp_12V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_46313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_46313___redundant_placeholder03
/while_while_cond_46313___redundant_placeholder13
/while_while_cond_46313___redundant_placeholder23
/while_while_cond_46313___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
'__inference_dense_1_layer_call_fn_47673

inputs
unknown:n
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_46625s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������n: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������n
 
_user_specified_nameinputs
�
�
B__inference_dense_1_layer_call_and_return_conditional_losses_47703

inputs3
!tensordot_readvariableop_resource:n-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������n�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������n: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������n
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46352

inputs

states0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0d
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
::n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:FB

_output_shapes

:n
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46221

inputs

states0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0d
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
::n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:FB

_output_shapes

:n
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�	
�
,__inference_sequential_1_layer_call_fn_46823
simple_rnn_1_input
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
	unknown_3:n
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_46808s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:���������
,
_user_specified_namesimple_rnn_1_input
�f
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_47076

inputsO
=simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource:nL
>simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resource:nQ
?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource:nS
Asimple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn;
)dense_1_tensordot_readvariableop_resource:n5
'dense_1_biasadd_readvariableop_resource:
identity��dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�simple_rnn_1/AssignVariableOp�simple_rnn_1/ReadVariableOp�5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp�4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp�6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp�8simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�simple_rnn_1/whilep
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_1/transpose	Transposeinputs$simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������j
simple_rnn_1/ShapeShapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
::��j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
%simple_rnn_1/simple_rnn_cell_3/MatMulMatMul%simple_rnn_1/strided_slice_1:output:0<simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
&simple_rnn_1/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_3/MatMul:product:0=simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
8simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOpAsimple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
'simple_rnn_1/simple_rnn_cell_3/MatMul_1MatMul>simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0@simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
"simple_rnn_1/simple_rnn_cell_3/addAddV2/simple_rnn_1/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:n|
#simple_rnn_1/simple_rnn_cell_3/TanhTanh&simple_rnn_1/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0#simple_rnn_1/ReadVariableOp:value:0#simple_rnn_1/strided_slice:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resourceAsimple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_1_while_body_46984*)
cond!R
simple_rnn_1_while_cond_46983*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0u
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_1/strided_slice_2StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
simple_rnn_1/AssignVariableOpAssignVariableOp?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resourcesimple_rnn_1/while:output:4^simple_rnn_1/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
dense_1/Tensordot/ShapeShapesimple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
::��a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposesimple_rnn_1/transpose_1:y:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������n�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������k
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^simple_rnn_1/AssignVariableOp^simple_rnn_1/ReadVariableOp6^simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp9^simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2>
simple_rnn_1/AssignVariableOpsimple_rnn_1/AssignVariableOp2:
simple_rnn_1/ReadVariableOpsimple_rnn_1/ReadVariableOp2n
5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp2t
8simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_18simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_12p
6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47780

inputs
states:n0
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n4
"matmul_1_readvariableop_1_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�MatMul_1/ReadVariableOp_1t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n^
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes

:n*
dtype0|
MatMul_1/ReadVariableOp_1ReadVariableOp"matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0!MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^MatMul_1/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp26
MatMul_1/ReadVariableOp_1MatMul_1/ReadVariableOp_122
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:&"
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�	
�
1__inference_simple_rnn_cell_3_layer_call_fn_47747

inputs
states_0
unknown:n
	unknown_0:n
	unknown_1:nn
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46221f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:nh

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes

:n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
::n: : : 22
StatefulPartitionedCallStatefulPartitionedCall:HD

_output_shapes

:n
"
_user_specified_name
states_0:F B

_output_shapes

:
 
_user_specified_nameinputs
�,
�
while_body_47394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nG
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nL
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:nE
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:nJ
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_3/MatMul/ReadVariableOp�/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nn
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*
_output_shapes

:n�

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�!
�
while_body_46183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_3_46222_0:n-
while_simple_rnn_cell_3_46224_0:n1
while_simple_rnn_cell_3_46226_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_3_46222:n+
while_simple_rnn_cell_3_46224:n/
while_simple_rnn_cell_3_46226:nn��/while/simple_rnn_cell_3/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_3_46222_0while_simple_rnn_cell_3_46224_0while_simple_rnn_cell_3_46226_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46221�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*
_output_shapes

:n~

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"@
while_simple_rnn_cell_3_46222while_simple_rnn_cell_3_46222_0"@
while_simple_rnn_cell_3_46224while_simple_rnn_cell_3_46224_0"@
while_simple_rnn_cell_3_46226while_simple_rnn_cell_3_46226_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�<
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47358
inputs_0B
0simple_rnn_cell_3_matmul_readvariableop_resource:n?
1simple_rnn_cell_3_biasadd_readvariableop_resource:nD
2simple_rnn_cell_3_matmul_1_readvariableop_resource:nF
4simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn
identity��AssignVariableOp�ReadVariableOp�(simple_rnn_cell_3/BiasAdd/ReadVariableOp�'simple_rnn_cell_3/MatMul/ReadVariableOp�)simple_rnn_cell_3/MatMul_1/ReadVariableOp�+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
simple_rnn_cell_3/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOp4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
simple_rnn_cell_3/MatMul_1MatMul1simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:03simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nb
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : �
ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_47292*
condR
while_cond_47291*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp,^simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2Z
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1+simple_rnn_cell_3/MatMul_1/ReadVariableOp_12V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0
�<
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46736

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:n?
1simple_rnn_cell_3_biasadd_readvariableop_resource:nD
2simple_rnn_cell_3_matmul_1_readvariableop_resource:nF
4simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn
identity��AssignVariableOp�ReadVariableOp�(simple_rnn_cell_3/BiasAdd/ReadVariableOp�'simple_rnn_cell_3/MatMul/ReadVariableOp�)simple_rnn_cell_3/MatMul_1/ReadVariableOp�+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
simple_rnn_cell_3/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOp4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
simple_rnn_cell_3/MatMul_1MatMul1simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:03simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nb
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : �
ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_46670*
condR
while_cond_46669*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp,^simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2Z
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1+simple_rnn_cell_3/MatMul_1/ReadVariableOp_12V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_46632
simple_rnn_1_input$
simple_rnn_1_46586:n 
simple_rnn_1_46588:n$
simple_rnn_1_46590:n$
simple_rnn_1_46592:nn
dense_1_46626:n
dense_1_46628:
identity��dense_1/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_1_inputsimple_rnn_1_46586simple_rnn_1_46588simple_rnn_1_46590simple_rnn_1_46592*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46585�
dense_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_1_46626dense_1_46628*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_46625{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:_ [
+
_output_shapes
:���������
,
_user_specified_namesimple_rnn_1_input
�	
�
,__inference_sequential_1_layer_call_fn_46948

inputs
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
	unknown_3:n
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_46808s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_47291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_47291___redundant_placeholder03
/while_while_cond_47291___redundant_placeholder13
/while_while_cond_47291___redundant_placeholder23
/while_while_cond_47291___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_46752
simple_rnn_1_input$
simple_rnn_1_46737:n 
simple_rnn_1_46739:n$
simple_rnn_1_46741:n$
simple_rnn_1_46743:nn
dense_1_46746:n
dense_1_46748:
identity��dense_1/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_1_inputsimple_rnn_1_46737simple_rnn_1_46739simple_rnn_1_46741simple_rnn_1_46743*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46736�
dense_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_1_46746dense_1_46748*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_46625{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:_ [
+
_output_shapes
:���������
,
_user_specified_namesimple_rnn_1_input
�!
�
while_body_46314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_3_46353_0:n-
while_simple_rnn_cell_3_46355_0:n1
while_simple_rnn_cell_3_46357_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_3_46353:n+
while_simple_rnn_cell_3_46355:n/
while_simple_rnn_cell_3_46357:nn��/while/simple_rnn_cell_3/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_3_46353_0while_simple_rnn_cell_3_46355_0while_simple_rnn_cell_3_46357_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46352�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*
_output_shapes

:n~

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"@
while_simple_rnn_cell_3_46353while_simple_rnn_cell_3_46353_0"@
while_simple_rnn_cell_3_46355while_simple_rnn_cell_3_46355_0"@
while_simple_rnn_cell_3_46357while_simple_rnn_cell_3_46357_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
while_cond_47597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_47597___redundant_placeholder03
/while_while_cond_47597___redundant_placeholder13
/while_while_cond_47597___redundant_placeholder23
/while_while_cond_47597___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
#__inference_signature_wrapper_46914
simple_rnn_1_input
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
	unknown_3:n
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_46130s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:���������
,
_user_specified_namesimple_rnn_1_input
�,
�
while_body_47496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nG
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nL
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:nE
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:nJ
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_3/MatMul/ReadVariableOp�/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nn
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*
_output_shapes

:n�

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
while_cond_46518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_46518___redundant_placeholder03
/while_while_cond_46518___redundant_placeholder13
/while_while_cond_46518___redundant_placeholder23
/while_while_cond_46518___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$: : : : :n: :::::

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�	
�
,__inference_sequential_1_layer_call_fn_46788
simple_rnn_1_input
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
	unknown_3:n
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_46773s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:���������
,
_user_specified_namesimple_rnn_1_input
�
�
,__inference_simple_rnn_1_layer_call_fn_47256

inputs
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46736s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�<
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47460
inputs_0B
0simple_rnn_cell_3_matmul_readvariableop_resource:n?
1simple_rnn_cell_3_biasadd_readvariableop_resource:nD
2simple_rnn_cell_3_matmul_1_readvariableop_resource:nF
4simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn
identity��AssignVariableOp�ReadVariableOp�(simple_rnn_cell_3/BiasAdd/ReadVariableOp�'simple_rnn_cell_3/MatMul/ReadVariableOp�)simple_rnn_cell_3/MatMul_1/ReadVariableOp�+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
simple_rnn_cell_3/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOp4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
simple_rnn_cell_3/MatMul_1MatMul1simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:03simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nb
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : �
ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_47394*
condR
while_cond_47393*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp,^simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2Z
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1+simple_rnn_cell_3/MatMul_1/ReadVariableOp_12V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0
�f
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_47204

inputsO
=simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource:nL
>simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resource:nQ
?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource:nS
Asimple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn;
)dense_1_tensordot_readvariableop_resource:n5
'dense_1_biasadd_readvariableop_resource:
identity��dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�simple_rnn_1/AssignVariableOp�simple_rnn_1/ReadVariableOp�5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp�4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp�6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp�8simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�simple_rnn_1/whilep
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_1/transpose	Transposeinputs$simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:���������j
simple_rnn_1/ShapeShapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
::��j
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
%simple_rnn_1/simple_rnn_cell_3/MatMulMatMul%simple_rnn_1/strided_slice_1:output:0<simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
&simple_rnn_1/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_3/MatMul:product:0=simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
8simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOpAsimple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
'simple_rnn_1/simple_rnn_cell_3/MatMul_1MatMul>simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0@simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
"simple_rnn_1/simple_rnn_cell_3/addAddV2/simple_rnn_1/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:n|
#simple_rnn_1/simple_rnn_cell_3/TanhTanh&simple_rnn_1/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n{
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0#simple_rnn_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0p
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0#simple_rnn_1/ReadVariableOp:value:0#simple_rnn_1/strided_slice:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_3_biasadd_readvariableop_resourceAsimple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
simple_rnn_1_while_body_47112*)
cond!R
simple_rnn_1_while_cond_47111*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0u
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_1/strided_slice_2StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maskr
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
simple_rnn_1/AssignVariableOpAssignVariableOp?simple_rnn_1_simple_rnn_cell_3_matmul_1_readvariableop_resourcesimple_rnn_1/while:output:4^simple_rnn_1/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:n*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
dense_1/Tensordot/ShapeShapesimple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
::��a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposesimple_rnn_1/transpose_1:y:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������n�
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������k
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^simple_rnn_1/AssignVariableOp^simple_rnn_1/ReadVariableOp6^simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp9^simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2>
simple_rnn_1/AssignVariableOpsimple_rnn_1/AssignVariableOp2:
simple_rnn_1/ReadVariableOpsimple_rnn_1/ReadVariableOp2n
5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_3/MatMul/ReadVariableOp2t
8simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_18simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp_12p
6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
1__inference_simple_rnn_cell_3_layer_call_fn_47718

inputs
states:n
unknown:n
	unknown_0:n
	unknown_1:nn
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatesunknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46167f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:nh

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes

:n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47797

inputs
states_00
matmul_readvariableop_resource:n-
biasadd_readvariableop_resource:n2
 matmul_1_readvariableop_resource:nn
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:n*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:n*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:nx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:nn*
dtype0f
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n[
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*
_output_shapes

:n>
TanhTanhadd:z:0*
T0*
_output_shapes

:nN
IdentityIdentityTanh:y:0^NoOp*
T0*
_output_shapes

:nP

Identity_1IdentityTanh:y:0^NoOp*
T0*
_output_shapes

:n�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
::n: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:HD

_output_shapes

:n
"
_user_specified_name
states_0:F B

_output_shapes

:
 
_user_specified_nameinputs
�,
�
while_body_47598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nG
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nL
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:nE
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:nJ
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_3/MatMul/ReadVariableOp�/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nn
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*
_output_shapes

:n�

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�/
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46394

inputs)
simple_rnn_cell_3_46299:n)
simple_rnn_cell_3_46301:n%
simple_rnn_cell_3_46303:n)
simple_rnn_cell_3_46305:nn
identity��AssignVariableOp�ReadVariableOp�)simple_rnn_cell_3/StatefulPartitionedCall�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0simple_rnn_cell_3_46299simple_rnn_cell_3_46301simple_rnn_cell_3_46303simple_rnn_cell_3_46305*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46298n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : f
ReadVariableOpReadVariableOpsimple_rnn_cell_3_46299*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_46301simple_rnn_cell_3_46303simple_rnn_cell_3_46305*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_46314*
condR
while_cond_46313*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOpsimple_rnn_cell_3_46299while:output:4^ReadVariableOp*^simple_rnn_cell_3/StatefulPartitionedCall*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
,__inference_sequential_1_layer_call_fn_46931

inputs
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
	unknown_3:n
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_46773s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
1__inference_simple_rnn_cell_3_layer_call_fn_47733

inputs
states:n
unknown:n
	unknown_0:n
	unknown_1:nn
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstatesunknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:n:n*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_46298f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:nh

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes

:n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_namestates:F B

_output_shapes

:
 
_user_specified_nameinputs
�
�
,__inference_simple_rnn_1_layer_call_fn_47243

inputs
unknown:n
	unknown_0:n
	unknown_1:n
	unknown_2:nn
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46585s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������n`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_46773

inputs$
simple_rnn_1_46758:n 
simple_rnn_1_46760:n$
simple_rnn_1_46762:n$
simple_rnn_1_46764:nn
dense_1_46767:n
dense_1_46769:
identity��dense_1/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_1_46758simple_rnn_1_46760simple_rnn_1_46762simple_rnn_1_46764*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46585�
dense_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_1_46767dense_1_46769*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_46625{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�,
�
while_body_46519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nG
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nL
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:nE
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:nJ
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_3/MatMul/ReadVariableOp�/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nn
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*
_output_shapes

:n�

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_46808

inputs$
simple_rnn_1_46793:n 
simple_rnn_1_46795:n$
simple_rnn_1_46797:n$
simple_rnn_1_46799:nn
dense_1_46802:n
dense_1_46804:
identity��dense_1/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_1_46793simple_rnn_1_46795simple_rnn_1_46797simple_rnn_1_46799*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������n*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_46736�
dense_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_1_46802dense_1_46804*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_46625{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^dense_1/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�<
�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47664

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:n?
1simple_rnn_cell_3_biasadd_readvariableop_resource:nD
2simple_rnn_cell_3_matmul_1_readvariableop_resource:nF
4simple_rnn_cell_3_matmul_1_readvariableop_1_resource:nn
identity��AssignVariableOp�ReadVariableOp�(simple_rnn_cell_3/BiasAdd/ReadVariableOp�'simple_rnn_cell_3/MatMul/ReadVariableOp�)simple_rnn_cell_3/MatMul_1/ReadVariableOp�+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask�
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:n*
dtype0�
simple_rnn_cell_3/MatMulMatMulstrided_slice_1:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:n*
dtype0�
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0�
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1ReadVariableOp4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
_output_shapes

:nn*
dtype0�
simple_rnn_cell_3/MatMul_1MatMul1simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:03simple_rnn_cell_3/MatMul_1/ReadVariableOp_1:value:0*
T0*
_output_shapes

:n�
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:nb
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:nn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : �
ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:n*
dtype0c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource4simple_rnn_cell_3_matmul_1_readvariableop_1_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*0
_output_shapes
: : : : :n: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_47598*
condR
while_cond_47597*/
output_shapes
: : : : :n: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   n   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������n*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:n*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������n�
AssignVariableOpAssignVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������n�
NoOpNoOp^AssignVariableOp^ReadVariableOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp,^simple_rnn_cell_3/MatMul_1/ReadVariableOp_1^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2Z
+simple_rnn_cell_3/MatMul_1/ReadVariableOp_1+simple_rnn_cell_3/MatMul_1/ReadVariableOp_12V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
simple_rnn_1_while_body_469846
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_23
/simple_rnn_1_while_simple_rnn_1_strided_slice_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nT
Fsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nY
Gsimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_41
-simple_rnn_1_while_simple_rnn_1_strided_sliceo
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource:nR
Dsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource:nW
Esimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp�<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
+simple_rnn_1/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
,simple_rnn_1/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
-simple_rnn_1/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_1/while/simple_rnn_cell_3/addAddV25simple_rnn_1/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:n�
)simple_rnn_1/while/simple_rnn_cell_3/TanhTanh,simple_rnn_1/while/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_3/Tanh:y:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes

:n�
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"`
-simple_rnn_1_while_simple_rnn_1_strided_slice/simple_rnn_1_while_simple_rnn_1_strided_slice_0"�
Dsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"�
Esimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"�
Csimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"�
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :]Y

_output_shapes
: 
?
_user_specified_name'%simple_rnn_1/while/maximum_iterations:W S

_output_shapes
: 
9
_user_specified_name!simple_rnn_1/while/loop_counter
�b
�
!__inference__traced_restore_48064
file_prefix1
assignvariableop_dense_1_kernel:n-
assignvariableop_1_dense_1_bias:J
8assignvariableop_2_simple_rnn_1_simple_rnn_cell_3_kernel:nT
Bassignvariableop_3_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel:nnD
6assignvariableop_4_simple_rnn_1_simple_rnn_cell_3_bias:n&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: Q
?assignvariableop_7_adam_m_simple_rnn_1_simple_rnn_cell_3_kernel:nQ
?assignvariableop_8_adam_v_simple_rnn_1_simple_rnn_cell_3_kernel:n[
Iassignvariableop_9_adam_m_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel:nn\
Jassignvariableop_10_adam_v_simple_rnn_1_simple_rnn_cell_3_recurrent_kernel:nnL
>assignvariableop_11_adam_m_simple_rnn_1_simple_rnn_cell_3_bias:nL
>assignvariableop_12_adam_v_simple_rnn_1_simple_rnn_cell_3_bias:n;
)assignvariableop_13_adam_m_dense_1_kernel:n;
)assignvariableop_14_adam_v_dense_1_kernel:n5
'assignvariableop_15_adam_m_dense_1_bias:5
'assignvariableop_16_adam_v_dense_1_bias:;
)assignvariableop_17_simple_rnn_1_variable:n%
assignvariableop_18_total_1: %
assignvariableop_19_count_1: #
assignvariableop_20_total: #
assignvariableop_21_count: 
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp8assignvariableop_2_simple_rnn_1_simple_rnn_cell_3_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpBassignvariableop_3_simple_rnn_1_simple_rnn_cell_3_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp6assignvariableop_4_simple_rnn_1_simple_rnn_cell_3_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp?assignvariableop_7_adam_m_simple_rnn_1_simple_rnn_cell_3_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp?assignvariableop_8_adam_v_simple_rnn_1_simple_rnn_cell_3_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpIassignvariableop_9_adam_m_simple_rnn_1_simple_rnn_cell_3_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpJassignvariableop_10_adam_v_simple_rnn_1_simple_rnn_cell_3_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp>assignvariableop_11_adam_m_simple_rnn_1_simple_rnn_cell_3_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp>assignvariableop_12_adam_v_simple_rnn_1_simple_rnn_cell_3_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_m_dense_1_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_v_dense_1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_m_dense_1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_v_dense_1_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_simple_rnn_1_variableIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�8
�
simple_rnn_1_while_body_471126
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_23
/simple_rnn_1_while_simple_rnn_1_strided_slice_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:nT
Fsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:nY
Gsimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:nn
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_41
-simple_rnn_1_while_simple_rnn_1_strided_sliceo
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource:nR
Dsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource:nW
Esimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:nn��;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp�:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp�<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp�
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0�
:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:n*
dtype0�
+simple_rnn_1/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:n*
dtype0�
,simple_rnn_1/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:nn*
dtype0�
-simple_rnn_1/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*
_output_shapes

:n�
(simple_rnn_1/while/simple_rnn_cell_3/addAddV25simple_rnn_1/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*
_output_shapes

:n�
)simple_rnn_1/while/simple_rnn_cell_3/TanhTanh,simple_rnn_1/while/simple_rnn_cell_3/add:z:0*
T0*
_output_shapes

:n�
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_3/Tanh:y:0^simple_rnn_1/while/NoOp*
T0*
_output_shapes

:n�
simple_rnn_1/while/NoOpNoOp<^simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"`
-simple_rnn_1_while_simple_rnn_1_strided_slice/simple_rnn_1_while_simple_rnn_1_strided_slice_0"�
Dsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"�
Esimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"�
Csimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"�
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : :n: : : : : 2z
;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:n:

_output_shapes
: :

_output_shapes
: :]Y

_output_shapes
: 
?
_user_specified_name'%simple_rnn_1/while/maximum_iterations:W S

_output_shapes
: 
9
_user_specified_name!simple_rnn_1/while/loop_counter"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
simple_rnn_1_input?
$serving_default_simple_rnn_1_input:0���������?
dense_14
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

 layers
!metrics
"layer_regularization_losses
#layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
$trace_0
%trace_1
&trace_2
'trace_32�
,__inference_sequential_1_layer_call_fn_46788
,__inference_sequential_1_layer_call_fn_46823
,__inference_sequential_1_layer_call_fn_46931
,__inference_sequential_1_layer_call_fn_46948�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z$trace_0z%trace_1z&trace_2z'trace_3
�
(trace_0
)trace_1
*trace_2
+trace_32�
G__inference_sequential_1_layer_call_and_return_conditional_losses_46632
G__inference_sequential_1_layer_call_and_return_conditional_losses_46752
G__inference_sequential_1_layer_call_and_return_conditional_losses_47076
G__inference_sequential_1_layer_call_and_return_conditional_losses_47204�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z(trace_0z)trace_1z*trace_2z+trace_3
�B�
 __inference__wrapped_model_46130simple_rnn_1_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
,
_variables
-_iterations
._learning_rate
/_index_dict
0
_momentums
1_velocities
2_update_step_xla"
experimentalOptimizer
,
3serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

4states
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
:trace_0
;trace_1
<trace_2
=trace_32�
,__inference_simple_rnn_1_layer_call_fn_47217
,__inference_simple_rnn_1_layer_call_fn_47230
,__inference_simple_rnn_1_layer_call_fn_47243
,__inference_simple_rnn_1_layer_call_fn_47256�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z:trace_0z;trace_1z<trace_2z=trace_3
�
>trace_0
?trace_1
@trace_2
Atrace_32�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47358
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47460
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47562
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47664�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z>trace_0z?trace_1z@trace_2zAtrace_3
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses
H_random_generator

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ntrace_02�
'__inference_dense_1_layer_call_fn_47673�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0
�
Otrace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_47703�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0
 :n2dense_1/kernel
:2dense_1/bias
7:5n2%simple_rnn_1/simple_rnn_cell_3/kernel
A:?nn2/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel
1:/n2#simple_rnn_1/simple_rnn_cell_3/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_1_layer_call_fn_46788simple_rnn_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_46823simple_rnn_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_46931inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_46948inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_46632simple_rnn_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_46752simple_rnn_1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_47076inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_47204inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
n
-0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
R0
T1
V2
X3
Z4"
trackable_list_wrapper
C
S0
U1
W2
Y3
[4"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_46914simple_rnn_1_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_simple_rnn_1_layer_call_fn_47217inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_simple_rnn_1_layer_call_fn_47230inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_simple_rnn_1_layer_call_fn_47243inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_simple_rnn_1_layer_call_fn_47256inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47358inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47460inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47562inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47664inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
btrace_0
ctrace_1
dtrace_2
etrace_32�
1__inference_simple_rnn_cell_3_layer_call_fn_47718
1__inference_simple_rnn_cell_3_layer_call_fn_47733
1__inference_simple_rnn_cell_3_layer_call_fn_47747
1__inference_simple_rnn_cell_3_layer_call_fn_47761�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0zctrace_1zdtrace_2zetrace_3
�
ftrace_0
gtrace_1
htrace_2
itrace_32�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47780
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47797
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47816
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47833�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0zgtrace_1zhtrace_2zitrace_3
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_1_layer_call_fn_47673inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_1_layer_call_and_return_conditional_losses_47703inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
j	variables
k	keras_api
	ltotal
	mcount"
_tf_keras_metric
^
n	variables
o	keras_api
	ptotal
	qcount
r
_fn_kwargs"
_tf_keras_metric
<::n2,Adam/m/simple_rnn_1/simple_rnn_cell_3/kernel
<::n2,Adam/v/simple_rnn_1/simple_rnn_cell_3/kernel
F:Dnn26Adam/m/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel
F:Dnn26Adam/v/simple_rnn_1/simple_rnn_cell_3/recurrent_kernel
6:4n2*Adam/m/simple_rnn_1/simple_rnn_cell_3/bias
6:4n2*Adam/v/simple_rnn_1/simple_rnn_cell_3/bias
%:#n2Adam/m/dense_1/kernel
%:#n2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
':%n2simple_rnn_1/Variable
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_simple_rnn_cell_3_layer_call_fn_47718inputsstates"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_simple_rnn_cell_3_layer_call_fn_47733inputsstates"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_simple_rnn_cell_3_layer_call_fn_47747inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_simple_rnn_cell_3_layer_call_fn_47761inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47780inputsstates"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47797inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47816inputsstates"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47833inputsstates_0"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
.
p0
q1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
 __inference__wrapped_model_46130�\?�<
5�2
0�-
simple_rnn_1_input���������
� "5�2
0
dense_1%�"
dense_1����������
B__inference_dense_1_layer_call_and_return_conditional_losses_47703k3�0
)�&
$�!
inputs���������n
� "0�-
&�#
tensor_0���������
� �
'__inference_dense_1_layer_call_fn_47673`3�0
)�&
$�!
inputs���������n
� "%�"
unknown����������
G__inference_sequential_1_layer_call_and_return_conditional_losses_46632�\G�D
=�:
0�-
simple_rnn_1_input���������
p

 
� "0�-
&�#
tensor_0���������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_46752�\G�D
=�:
0�-
simple_rnn_1_input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_47076w\;�8
1�.
$�!
inputs���������
p

 
� "0�-
&�#
tensor_0���������
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_47204w\;�8
1�.
$�!
inputs���������
p 

 
� "0�-
&�#
tensor_0���������
� �
,__inference_sequential_1_layer_call_fn_46788x\G�D
=�:
0�-
simple_rnn_1_input���������
p

 
� "%�"
unknown����������
,__inference_sequential_1_layer_call_fn_46823x\G�D
=�:
0�-
simple_rnn_1_input���������
p 

 
� "%�"
unknown����������
,__inference_sequential_1_layer_call_fn_46931l\;�8
1�.
$�!
inputs���������
p

 
� "%�"
unknown����������
,__inference_sequential_1_layer_call_fn_46948l\;�8
1�.
$�!
inputs���������
p 

 
� "%�"
unknown����������
#__inference_signature_wrapper_46914�\U�R
� 
K�H
F
simple_rnn_1_input0�-
simple_rnn_1_input���������"5�2
0
dense_1%�"
dense_1����������
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47358�\F�C
<�9
+�(
&�#
inputs_0���������

 
p

 
� "0�-
&�#
tensor_0���������n
� �
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47460�\F�C
<�9
+�(
&�#
inputs_0���������

 
p 

 
� "0�-
&�#
tensor_0���������n
� �
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47562y\?�<
5�2
$�!
inputs���������

 
p

 
� "0�-
&�#
tensor_0���������n
� �
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_47664y\?�<
5�2
$�!
inputs���������

 
p 

 
� "0�-
&�#
tensor_0���������n
� �
,__inference_simple_rnn_1_layer_call_fn_47217u\F�C
<�9
+�(
&�#
inputs_0���������

 
p

 
� "%�"
unknown���������n�
,__inference_simple_rnn_1_layer_call_fn_47230u\F�C
<�9
+�(
&�#
inputs_0���������

 
p 

 
� "%�"
unknown���������n�
,__inference_simple_rnn_1_layer_call_fn_47243n\?�<
5�2
$�!
inputs���������

 
p

 
� "%�"
unknown���������n�
,__inference_simple_rnn_1_layer_call_fn_47256n\?�<
5�2
$�!
inputs���������

 
p 

 
� "%�"
unknown���������n�
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47780�e�b
[�X
�
inputs
9�6
4�1	�
�n
�
p
` VariableSpec 
p
� "N�K
D�A
�

tensor_0_0n
"�
�
tensor_0_1_0n
� �
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47797�J�G
@�=
�
inputs
�
�
states_0n
p
� "N�K
D�A
�

tensor_0_0n
"�
�
tensor_0_1_0n
� �
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47816�e�b
[�X
�
inputs
9�6
4�1	�
�n
�
p
` VariableSpec 
p 
� "N�K
D�A
�

tensor_0_0n
"�
�
tensor_0_1_0n
� �
L__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_47833�J�G
@�=
�
inputs
�
�
states_0n
p 
� "N�K
D�A
�

tensor_0_0n
"�
�
tensor_0_1_0n
� �
1__inference_simple_rnn_cell_3_layer_call_fn_47718�e�b
[�X
�
inputs
9�6
4�1	�
�n
�
p
` VariableSpec 
p
� "@�=
�
tensor_0n
 �
�

tensor_1_0n�
1__inference_simple_rnn_cell_3_layer_call_fn_47733�e�b
[�X
�
inputs
9�6
4�1	�
�n
�
p
` VariableSpec 
p 
� "@�=
�
tensor_0n
 �
�

tensor_1_0n�
1__inference_simple_rnn_cell_3_layer_call_fn_47747�J�G
@�=
�
inputs
�
�
states_0n
p
� "@�=
�
tensor_0n
 �
�

tensor_1_0n�
1__inference_simple_rnn_cell_3_layer_call_fn_47761�J�G
@�=
�
inputs
�
�
states_0n
p 
� "@�=
�
tensor_0n
 �
�

tensor_1_0n