Կ
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
?
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
: *
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
: *
dtype0
?
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:@*
dtype0
?
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_11/kernel
~
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_11/bias
n
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes	
:?*
dtype0
{
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namedense_6/kernel
t
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*!
_output_shapes
:???*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:?*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	?*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
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
?
SGD/conv2d_9/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameSGD/conv2d_9/kernel/momentum
?
0SGD/conv2d_9/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_9/kernel/momentum*&
_output_shapes
: *
dtype0
?
SGD/conv2d_9/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameSGD/conv2d_9/bias/momentum
?
.SGD/conv2d_9/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_9/bias/momentum*
_output_shapes
: *
dtype0
?
SGD/conv2d_10/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*.
shared_nameSGD/conv2d_10/kernel/momentum
?
1SGD/conv2d_10/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_10/kernel/momentum*&
_output_shapes
: @*
dtype0
?
SGD/conv2d_10/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameSGD/conv2d_10/bias/momentum
?
/SGD/conv2d_10/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_10/bias/momentum*
_output_shapes
:@*
dtype0
?
SGD/conv2d_11/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*.
shared_nameSGD/conv2d_11/kernel/momentum
?
1SGD/conv2d_11/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_11/kernel/momentum*'
_output_shapes
:@?*
dtype0
?
SGD/conv2d_11/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameSGD/conv2d_11/bias/momentum
?
/SGD/conv2d_11/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv2d_11/bias/momentum*
_output_shapes	
:?*
dtype0
?
SGD/dense_6/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameSGD/dense_6/kernel/momentum
?
/SGD/dense_6/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_6/kernel/momentum*!
_output_shapes
:???*
dtype0
?
SGD/dense_6/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameSGD/dense_6/bias/momentum
?
-SGD/dense_6/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_6/bias/momentum*
_output_shapes	
:?*
dtype0
?
SGD/dense_7/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameSGD/dense_7/kernel/momentum
?
/SGD/dense_7/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_7/kernel/momentum*
_output_shapes
:	?*
dtype0
?
SGD/dense_7/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameSGD/dense_7/bias/momentum
?
-SGD/dense_7/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_7/bias/momentum*
_output_shapes
:*
dtype0

NoOpNoOp
?@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
 trainable_variables
!	keras_api
h

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
R
(	variables
)regularization_losses
*trainable_variables
+	keras_api
R
,	variables
-regularization_losses
.trainable_variables
/	keras_api
h

0kernel
1bias
2	variables
3regularization_losses
4trainable_variables
5	keras_api
R
6	variables
7regularization_losses
8trainable_variables
9	keras_api
R
:	variables
;regularization_losses
<trainable_variables
=	keras_api
R
>	variables
?regularization_losses
@trainable_variables
A	keras_api
h

Bkernel
Cbias
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
R
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
h

Lkernel
Mbias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
?
Riter
	Sdecay
Tlearning_rate
Umomentummomentum?momentum?"momentum?#momentum?0momentum?1momentum?Bmomentum?Cmomentum?Lmomentum?Mmomentum?
F
0
1
"2
#3
04
15
B6
C7
L8
M9
 
F
0
1
"2
#3
04
15
B6
C7
L8
M9
?
Vnon_trainable_variables
	variables
Wlayer_regularization_losses
regularization_losses
Xlayer_metrics

Ylayers
Zmetrics
trainable_variables
 
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
[non_trainable_variables
	variables
\layer_regularization_losses
regularization_losses
]layer_metrics

^layers
_metrics
trainable_variables
 
 
 
?
`non_trainable_variables
	variables
alayer_regularization_losses
regularization_losses
blayer_metrics

clayers
dmetrics
trainable_variables
 
 
 
?
enon_trainable_variables
	variables
flayer_regularization_losses
regularization_losses
glayer_metrics

hlayers
imetrics
 trainable_variables
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
?
jnon_trainable_variables
$	variables
klayer_regularization_losses
%regularization_losses
llayer_metrics

mlayers
nmetrics
&trainable_variables
 
 
 
?
onon_trainable_variables
(	variables
player_regularization_losses
)regularization_losses
qlayer_metrics

rlayers
smetrics
*trainable_variables
 
 
 
?
tnon_trainable_variables
,	variables
ulayer_regularization_losses
-regularization_losses
vlayer_metrics

wlayers
xmetrics
.trainable_variables
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
?
ynon_trainable_variables
2	variables
zlayer_regularization_losses
3regularization_losses
{layer_metrics

|layers
}metrics
4trainable_variables
 
 
 
?
~non_trainable_variables
6	variables
layer_regularization_losses
7regularization_losses
?layer_metrics
?layers
?metrics
8trainable_variables
 
 
 
?
?non_trainable_variables
:	variables
 ?layer_regularization_losses
;regularization_losses
?layer_metrics
?layers
?metrics
<trainable_variables
 
 
 
?
?non_trainable_variables
>	variables
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?layers
?metrics
@trainable_variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
 

B0
C1
?
?non_trainable_variables
D	variables
 ?layer_regularization_losses
Eregularization_losses
?layer_metrics
?layers
?metrics
Ftrainable_variables
 
 
 
?
?non_trainable_variables
H	variables
 ?layer_regularization_losses
Iregularization_losses
?layer_metrics
?layers
?metrics
Jtrainable_variables
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1
 

L0
M1
?
?non_trainable_variables
N	variables
 ?layer_regularization_losses
Oregularization_losses
?layer_metrics
?layers
?metrics
Ptrainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUESGD/conv2d_9/kernel/momentumYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/conv2d_9/bias/momentumWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/conv2d_10/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/conv2d_10/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/conv2d_11/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/conv2d_11/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/dense_6/kernel/momentumYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/dense_6/bias/momentumWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/dense_7/kernel/momentumYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUESGD/dense_7/bias/momentumWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_9_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_9_inputconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_83914
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0SGD/conv2d_9/kernel/momentum/Read/ReadVariableOp.SGD/conv2d_9/bias/momentum/Read/ReadVariableOp1SGD/conv2d_10/kernel/momentum/Read/ReadVariableOp/SGD/conv2d_10/bias/momentum/Read/ReadVariableOp1SGD/conv2d_11/kernel/momentum/Read/ReadVariableOp/SGD/conv2d_11/bias/momentum/Read/ReadVariableOp/SGD/dense_6/kernel/momentum/Read/ReadVariableOp-SGD/dense_6/bias/momentum/Read/ReadVariableOp/SGD/dense_7/kernel/momentum/Read/ReadVariableOp-SGD/dense_7/bias/momentum/Read/ReadVariableOpConst*)
Tin"
 2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_84654
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1SGD/conv2d_9/kernel/momentumSGD/conv2d_9/bias/momentumSGD/conv2d_10/kernel/momentumSGD/conv2d_10/bias/momentumSGD/conv2d_11/kernel/momentumSGD/conv2d_11/bias/momentumSGD/dense_6/kernel/momentumSGD/dense_6/bias/momentumSGD/dense_7/kernel/momentumSGD/dense_7/bias/momentum*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_84748??
?
?
'__inference_dense_6_layer_call_fn_84500

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_834502
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
E__inference_classifier_layer_call_and_return_conditional_losses_83883
conv2d_9_input(
conv2d_9_83849: 
conv2d_9_83851: )
conv2d_10_83856: @
conv2d_10_83858:@*
conv2d_11_83863:@?
conv2d_11_83865:	?"
dense_6_83871:???
dense_6_83873:	? 
dense_7_83877:	?
dense_7_83879:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?,spatial_dropout2d_10/StatefulPartitionedCall?,spatial_dropout2d_11/StatefulPartitionedCall?+spatial_dropout2d_9/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallconv2d_9_inputconv2d_9_83849conv2d_9_83851*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_833552"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_833652!
max_pooling2d_9/PartitionedCall?
+spatial_dropout2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_836792-
+spatial_dropout2d_9/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_9/StatefulPartitionedCall:output:0conv2d_10_83856conv2d_10_83858*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_833842#
!conv2d_10/StatefulPartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_833942"
 max_pooling2d_10/PartitionedCall?
,spatial_dropout2d_10/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0,^spatial_dropout2d_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_836312.
,spatial_dropout2d_10/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall5spatial_dropout2d_10/StatefulPartitionedCall:output:0conv2d_11_83863conv2d_11_83865*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????""?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_834132#
!conv2d_11/StatefulPartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_834232"
 max_pooling2d_11/PartitionedCall?
,spatial_dropout2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0-^spatial_dropout2d_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_835832.
,spatial_dropout2d_11/StatefulPartitionedCall?
flatten_3/PartitionedCallPartitionedCall5spatial_dropout2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_834372
flatten_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_83871dense_6_83873*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_834502!
dense_6/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0-^spatial_dropout2d_11/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_835342#
!dropout_3/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_83877dense_7_83879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_834742!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall-^spatial_dropout2d_10/StatefulPartitionedCall-^spatial_dropout2d_11/StatefulPartitionedCall,^spatial_dropout2d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2\
,spatial_dropout2d_10/StatefulPartitionedCall,spatial_dropout2d_10/StatefulPartitionedCall2\
,spatial_dropout2d_11/StatefulPartitionedCall,spatial_dropout2d_11/StatefulPartitionedCall2Z
+spatial_dropout2d_9/StatefulPartitionedCall+spatial_dropout2d_9/StatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv2d_9_input
?
P
4__inference_spatial_dropout2d_10_layer_call_fn_84338

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_831682
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_84146

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_11_layer_call_and_return_conditional_losses_83413

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????""?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????""?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????$$@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
m
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84217

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????JJ 2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????JJ 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????JJ :W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_83400

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$$@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_83201

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_9_layer_call_and_return_conditional_losses_84132

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_11_layer_call_and_return_conditional_losses_84364

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????""?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????""?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????$$@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84426

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_84151

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_83583

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_10_layer_call_fn_84272

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_831462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_3_layer_call_fn_84522

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_834612
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
O
3__inference_spatial_dropout2d_9_layer_call_fn_84232

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_833712
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????JJ :W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_11_layer_call_fn_84393

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_834232
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????""?:X T
0
_output_shapes
:?????????""?
 
_user_specified_nameinputs
?7
?
E__inference_classifier_layer_call_and_return_conditional_losses_83481

inputs(
conv2d_9_83356: 
conv2d_9_83358: )
conv2d_10_83385: @
conv2d_10_83387:@*
conv2d_11_83414:@?
conv2d_11_83416:	?"
dense_6_83451:???
dense_6_83453:	? 
dense_7_83475:	?
dense_7_83477:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_9_83356conv2d_9_83358*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_833552"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_833652!
max_pooling2d_9/PartitionedCall?
#spatial_dropout2d_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_833712%
#spatial_dropout2d_9/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout2d_9/PartitionedCall:output:0conv2d_10_83385conv2d_10_83387*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_833842#
!conv2d_10/StatefulPartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_833942"
 max_pooling2d_10/PartitionedCall?
$spatial_dropout2d_10/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_834002&
$spatial_dropout2d_10/PartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall-spatial_dropout2d_10/PartitionedCall:output:0conv2d_11_83414conv2d_11_83416*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????""?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_834132#
!conv2d_11/StatefulPartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_834232"
 max_pooling2d_11/PartitionedCall?
$spatial_dropout2d_11/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_834292&
$spatial_dropout2d_11/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall-spatial_dropout2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_834372
flatten_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_83451dense_6_83453*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_834502!
dense_6/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_834612
dropout_3/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_83475dense_7_83477*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_834742!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_83301

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_9_layer_call_and_return_conditional_losses_83355

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_83429

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_classifier_layer_call_fn_83504
conv2d_9_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_classifier_layer_call_and_return_conditional_losses_834812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv2d_9_input
?
K
/__inference_max_pooling2d_9_layer_call_fn_84156

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_830462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
l
3__inference_spatial_dropout2d_9_layer_call_fn_84227

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_831012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
l
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84166

inputs

identity_1}
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_9_layer_call_fn_84141

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_833552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
P
4__inference_spatial_dropout2d_10_layer_call_fn_84348

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_834002
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?

?
*__inference_classifier_layer_call_fn_84121

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_classifier_layer_call_and_return_conditional_losses_837612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_classifier_layer_call_fn_83809
conv2d_9_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_classifier_layer_call_and_return_conditional_losses_837612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv2d_9_input
?
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_83534

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84305

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_83046

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84398

inputs

identity_1}
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84333

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????$$@2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$$@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
m
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_83679

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????JJ 2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????JJ 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????JJ :W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_84383

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????""?:X T
0
_output_shapes
:?????????""?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_11_layer_call_fn_84373

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????""?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_834132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????""?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????$$@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?7
?
E__inference_classifier_layer_call_and_return_conditional_losses_83846
conv2d_9_input(
conv2d_9_83812: 
conv2d_9_83814: )
conv2d_10_83819: @
conv2d_10_83821:@*
conv2d_11_83826:@?
conv2d_11_83828:	?"
dense_6_83834:???
dense_6_83836:	? 
dense_7_83840:	?
dense_7_83842:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallconv2d_9_inputconv2d_9_83812conv2d_9_83814*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_833552"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_833652!
max_pooling2d_9/PartitionedCall?
#spatial_dropout2d_9/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_833712%
#spatial_dropout2d_9/PartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout2d_9/PartitionedCall:output:0conv2d_10_83819conv2d_10_83821*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_833842#
!conv2d_10/StatefulPartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_833942"
 max_pooling2d_10/PartitionedCall?
$spatial_dropout2d_10/PartitionedCallPartitionedCall)max_pooling2d_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_834002&
$spatial_dropout2d_10/PartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall-spatial_dropout2d_10/PartitionedCall:output:0conv2d_11_83826conv2d_11_83828*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????""?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_834132#
!conv2d_11/StatefulPartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_834232"
 max_pooling2d_11/PartitionedCall?
$spatial_dropout2d_11/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_834292&
$spatial_dropout2d_11/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall-spatial_dropout2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_834372
flatten_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_83834dense_6_83836*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_834502!
dense_6/StatefulPartitionedCall?
dropout_3/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_834612
dropout_3/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_83840dense_7_83842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_834742!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv2d_9_input
?>
?
E__inference_classifier_layer_call_and_return_conditional_losses_83761

inputs(
conv2d_9_83727: 
conv2d_9_83729: )
conv2d_10_83734: @
conv2d_10_83736:@*
conv2d_11_83741:@?
conv2d_11_83743:	?"
dense_6_83749:???
dense_6_83751:	? 
dense_7_83755:	?
dense_7_83757:
identity??!conv2d_10/StatefulPartitionedCall?!conv2d_11/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?,spatial_dropout2d_10/StatefulPartitionedCall?,spatial_dropout2d_11/StatefulPartitionedCall?+spatial_dropout2d_9/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_9_83727conv2d_9_83729*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_833552"
 conv2d_9/StatefulPartitionedCall?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_833652!
max_pooling2d_9/PartitionedCall?
+spatial_dropout2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_836792-
+spatial_dropout2d_9/StatefulPartitionedCall?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout2d_9/StatefulPartitionedCall:output:0conv2d_10_83734conv2d_10_83736*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_833842#
!conv2d_10/StatefulPartitionedCall?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_833942"
 max_pooling2d_10/PartitionedCall?
,spatial_dropout2d_10/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0,^spatial_dropout2d_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_836312.
,spatial_dropout2d_10/StatefulPartitionedCall?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall5spatial_dropout2d_10/StatefulPartitionedCall:output:0conv2d_11_83741conv2d_11_83743*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????""?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_834132#
!conv2d_11/StatefulPartitionedCall?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_834232"
 max_pooling2d_11/PartitionedCall?
,spatial_dropout2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0-^spatial_dropout2d_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_835832.
,spatial_dropout2d_11/StatefulPartitionedCall?
flatten_3/PartitionedCallPartitionedCall5spatial_dropout2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_834372
flatten_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_83749dense_6_83751*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_834502!
dense_6/StatefulPartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0-^spatial_dropout2d_11/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_835342#
!dropout_3/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_83755dense_7_83757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_834742!
dense_7/StatefulPartitionedCall?
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall-^spatial_dropout2d_10/StatefulPartitionedCall-^spatial_dropout2d_11/StatefulPartitionedCall,^spatial_dropout2d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2\
,spatial_dropout2d_10/StatefulPartitionedCall,spatial_dropout2d_10/StatefulPartitionedCall2\
,spatial_dropout2d_11/StatefulPartitionedCall,spatial_dropout2d_11/StatefulPartitionedCall2Z
+spatial_dropout2d_9/StatefulPartitionedCall+spatial_dropout2d_9/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
m
4__inference_spatial_dropout2d_11_layer_call_fn_84459

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_833012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84421

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_10_layer_call_and_return_conditional_losses_84248

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????HH@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????HH@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_83268

inputs

identity_1}
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?A
?
__inference__traced_save_84654
file_prefix.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_sgd_conv2d_9_kernel_momentum_read_readvariableop9
5savev2_sgd_conv2d_9_bias_momentum_read_readvariableop<
8savev2_sgd_conv2d_10_kernel_momentum_read_readvariableop:
6savev2_sgd_conv2d_10_bias_momentum_read_readvariableop<
8savev2_sgd_conv2d_11_kernel_momentum_read_readvariableop:
6savev2_sgd_conv2d_11_bias_momentum_read_readvariableop:
6savev2_sgd_dense_6_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_6_bias_momentum_read_readvariableop:
6savev2_sgd_dense_7_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_7_bias_momentum_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_sgd_conv2d_9_kernel_momentum_read_readvariableop5savev2_sgd_conv2d_9_bias_momentum_read_readvariableop8savev2_sgd_conv2d_10_kernel_momentum_read_readvariableop6savev2_sgd_conv2d_10_bias_momentum_read_readvariableop8savev2_sgd_conv2d_11_kernel_momentum_read_readvariableop6savev2_sgd_conv2d_11_bias_momentum_read_readvariableop6savev2_sgd_dense_6_kernel_momentum_read_readvariableop4savev2_sgd_dense_6_bias_momentum_read_readvariableop6savev2_sgd_dense_7_kernel_momentum_read_readvariableop4savev2_sgd_dense_7_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:???:?:	?:: : : : : : : : : : : @:@:@?:?:???:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:'#
!
_output_shapes
:???:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:'#
!
_output_shapes
:???:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?@
?
E__inference_classifier_layer_call_and_return_conditional_losses_83962

inputsA
'conv2d_9_conv2d_readvariableop_resource: 6
(conv2d_9_biasadd_readvariableop_resource: B
(conv2d_10_conv2d_readvariableop_resource: @7
)conv2d_10_biasadd_readvariableop_resource:@C
(conv2d_11_conv2d_readvariableop_resource:@?8
)conv2d_11_biasadd_readvariableop_resource:	?;
&dense_6_matmul_readvariableop_resource:???6
'dense_6_biasadd_readvariableop_resource:	?9
&dense_7_matmul_readvariableop_resource:	?5
'dense_7_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Dinputs&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_9/BiasAdd}
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_9/Relu?
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool?
spatial_dropout2d_9/IdentityIdentity max_pooling2d_9/MaxPool:output:0*
T0*/
_output_shapes
:?????????JJ 2
spatial_dropout2d_9/Identity?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2D%spatial_dropout2d_9/Identity:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@*
paddingVALID*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH@2
conv2d_10/Relu?
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool?
spatial_dropout2d_10/IdentityIdentity!max_pooling2d_10/MaxPool:output:0*
T0*/
_output_shapes
:?????????$$@2
spatial_dropout2d_10/Identity?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D&spatial_dropout2d_10/Identity:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?*
paddingVALID*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?2
conv2d_11/BiasAdd
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:?????????""?2
conv2d_11/Relu?
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPool?
spatial_dropout2d_11/IdentityIdentity!max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:??????????2
spatial_dropout2d_11/Identitys
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"??????  2
flatten_3/Const?
flatten_3/ReshapeReshape&spatial_dropout2d_11/Identity:output:0flatten_3/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_3/Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Relu?
dropout_3/IdentityIdentitydense_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_3/Identity?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldropout_3/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddy
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_7/Sigmoidn
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_84262

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
l
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_83371

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????JJ 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????JJ :W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_83168

inputs

identity_1}
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_10_layer_call_fn_84277

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_833942
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????HH@:W S
/
_output_shapes
:?????????HH@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_10_layer_call_fn_84257

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????HH@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_833842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????HH@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
l
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_83068

inputs

identity_1}
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84449

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_3_layer_call_fn_84527

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_835342
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
3__inference_spatial_dropout2d_9_layer_call_fn_84237

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_836792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????JJ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????JJ 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
??
?
E__inference_classifier_layer_call_and_return_conditional_losses_84071

inputsA
'conv2d_9_conv2d_readvariableop_resource: 6
(conv2d_9_biasadd_readvariableop_resource: B
(conv2d_10_conv2d_readvariableop_resource: @7
)conv2d_10_biasadd_readvariableop_resource:@C
(conv2d_11_conv2d_readvariableop_resource:@?8
)conv2d_11_biasadd_readvariableop_resource:	?;
&dense_6_matmul_readvariableop_resource:???6
'dense_6_biasadd_readvariableop_resource:	?9
&dense_7_matmul_readvariableop_resource:	?5
'dense_7_biasadd_readvariableop_resource:
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Dinputs&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_9/BiasAdd}
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_9/Relu?
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool?
spatial_dropout2d_9/ShapeShape max_pooling2d_9/MaxPool:output:0*
T0*
_output_shapes
:2
spatial_dropout2d_9/Shape?
'spatial_dropout2d_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout2d_9/strided_slice/stack?
)spatial_dropout2d_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout2d_9/strided_slice/stack_1?
)spatial_dropout2d_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout2d_9/strided_slice/stack_2?
!spatial_dropout2d_9/strided_sliceStridedSlice"spatial_dropout2d_9/Shape:output:00spatial_dropout2d_9/strided_slice/stack:output:02spatial_dropout2d_9/strided_slice/stack_1:output:02spatial_dropout2d_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout2d_9/strided_slice?
)spatial_dropout2d_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout2d_9/strided_slice_1/stack?
+spatial_dropout2d_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout2d_9/strided_slice_1/stack_1?
+spatial_dropout2d_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout2d_9/strided_slice_1/stack_2?
#spatial_dropout2d_9/strided_slice_1StridedSlice"spatial_dropout2d_9/Shape:output:02spatial_dropout2d_9/strided_slice_1/stack:output:04spatial_dropout2d_9/strided_slice_1/stack_1:output:04spatial_dropout2d_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout2d_9/strided_slice_1?
!spatial_dropout2d_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!spatial_dropout2d_9/dropout/Const?
spatial_dropout2d_9/dropout/MulMul max_pooling2d_9/MaxPool:output:0*spatial_dropout2d_9/dropout/Const:output:0*
T0*/
_output_shapes
:?????????JJ 2!
spatial_dropout2d_9/dropout/Mul?
2spatial_dropout2d_9/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout2d_9/dropout/random_uniform/shape/1?
2spatial_dropout2d_9/dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout2d_9/dropout/random_uniform/shape/2?
0spatial_dropout2d_9/dropout/random_uniform/shapePack*spatial_dropout2d_9/strided_slice:output:0;spatial_dropout2d_9/dropout/random_uniform/shape/1:output:0;spatial_dropout2d_9/dropout/random_uniform/shape/2:output:0,spatial_dropout2d_9/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout2d_9/dropout/random_uniform/shape?
8spatial_dropout2d_9/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout2d_9/dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02:
8spatial_dropout2d_9/dropout/random_uniform/RandomUniform?
*spatial_dropout2d_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2,
*spatial_dropout2d_9/dropout/GreaterEqual/y?
(spatial_dropout2d_9/dropout/GreaterEqualGreaterEqualAspatial_dropout2d_9/dropout/random_uniform/RandomUniform:output:03spatial_dropout2d_9/dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2*
(spatial_dropout2d_9/dropout/GreaterEqual?
 spatial_dropout2d_9/dropout/CastCast,spatial_dropout2d_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2"
 spatial_dropout2d_9/dropout/Cast?
!spatial_dropout2d_9/dropout/Mul_1Mul#spatial_dropout2d_9/dropout/Mul:z:0$spatial_dropout2d_9/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????JJ 2#
!spatial_dropout2d_9/dropout/Mul_1?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_10/Conv2D/ReadVariableOp?
conv2d_10/Conv2DConv2D%spatial_dropout2d_9/dropout/Mul_1:z:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@*
paddingVALID*
strides
2
conv2d_10/Conv2D?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH@2
conv2d_10/Relu?
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool?
spatial_dropout2d_10/ShapeShape!max_pooling2d_10/MaxPool:output:0*
T0*
_output_shapes
:2
spatial_dropout2d_10/Shape?
(spatial_dropout2d_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(spatial_dropout2d_10/strided_slice/stack?
*spatial_dropout2d_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*spatial_dropout2d_10/strided_slice/stack_1?
*spatial_dropout2d_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*spatial_dropout2d_10/strided_slice/stack_2?
"spatial_dropout2d_10/strided_sliceStridedSlice#spatial_dropout2d_10/Shape:output:01spatial_dropout2d_10/strided_slice/stack:output:03spatial_dropout2d_10/strided_slice/stack_1:output:03spatial_dropout2d_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"spatial_dropout2d_10/strided_slice?
*spatial_dropout2d_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*spatial_dropout2d_10/strided_slice_1/stack?
,spatial_dropout2d_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,spatial_dropout2d_10/strided_slice_1/stack_1?
,spatial_dropout2d_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,spatial_dropout2d_10/strided_slice_1/stack_2?
$spatial_dropout2d_10/strided_slice_1StridedSlice#spatial_dropout2d_10/Shape:output:03spatial_dropout2d_10/strided_slice_1/stack:output:05spatial_dropout2d_10/strided_slice_1/stack_1:output:05spatial_dropout2d_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$spatial_dropout2d_10/strided_slice_1?
"spatial_dropout2d_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"spatial_dropout2d_10/dropout/Const?
 spatial_dropout2d_10/dropout/MulMul!max_pooling2d_10/MaxPool:output:0+spatial_dropout2d_10/dropout/Const:output:0*
T0*/
_output_shapes
:?????????$$@2"
 spatial_dropout2d_10/dropout/Mul?
3spatial_dropout2d_10/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3spatial_dropout2d_10/dropout/random_uniform/shape/1?
3spatial_dropout2d_10/dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :25
3spatial_dropout2d_10/dropout/random_uniform/shape/2?
1spatial_dropout2d_10/dropout/random_uniform/shapePack+spatial_dropout2d_10/strided_slice:output:0<spatial_dropout2d_10/dropout/random_uniform/shape/1:output:0<spatial_dropout2d_10/dropout/random_uniform/shape/2:output:0-spatial_dropout2d_10/strided_slice_1:output:0*
N*
T0*
_output_shapes
:23
1spatial_dropout2d_10/dropout/random_uniform/shape?
9spatial_dropout2d_10/dropout/random_uniform/RandomUniformRandomUniform:spatial_dropout2d_10/dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02;
9spatial_dropout2d_10/dropout/random_uniform/RandomUniform?
+spatial_dropout2d_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+spatial_dropout2d_10/dropout/GreaterEqual/y?
)spatial_dropout2d_10/dropout/GreaterEqualGreaterEqualBspatial_dropout2d_10/dropout/random_uniform/RandomUniform:output:04spatial_dropout2d_10/dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2+
)spatial_dropout2d_10/dropout/GreaterEqual?
!spatial_dropout2d_10/dropout/CastCast-spatial_dropout2d_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2#
!spatial_dropout2d_10/dropout/Cast?
"spatial_dropout2d_10/dropout/Mul_1Mul$spatial_dropout2d_10/dropout/Mul:z:0%spatial_dropout2d_10/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$$@2$
"spatial_dropout2d_10/dropout/Mul_1?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_11/Conv2D/ReadVariableOp?
conv2d_11/Conv2DConv2D&spatial_dropout2d_10/dropout/Mul_1:z:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?*
paddingVALID*
strides
2
conv2d_11/Conv2D?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?2
conv2d_11/BiasAdd
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:?????????""?2
conv2d_11/Relu?
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPool?
spatial_dropout2d_11/ShapeShape!max_pooling2d_11/MaxPool:output:0*
T0*
_output_shapes
:2
spatial_dropout2d_11/Shape?
(spatial_dropout2d_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(spatial_dropout2d_11/strided_slice/stack?
*spatial_dropout2d_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*spatial_dropout2d_11/strided_slice/stack_1?
*spatial_dropout2d_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*spatial_dropout2d_11/strided_slice/stack_2?
"spatial_dropout2d_11/strided_sliceStridedSlice#spatial_dropout2d_11/Shape:output:01spatial_dropout2d_11/strided_slice/stack:output:03spatial_dropout2d_11/strided_slice/stack_1:output:03spatial_dropout2d_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"spatial_dropout2d_11/strided_slice?
*spatial_dropout2d_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*spatial_dropout2d_11/strided_slice_1/stack?
,spatial_dropout2d_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,spatial_dropout2d_11/strided_slice_1/stack_1?
,spatial_dropout2d_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,spatial_dropout2d_11/strided_slice_1/stack_2?
$spatial_dropout2d_11/strided_slice_1StridedSlice#spatial_dropout2d_11/Shape:output:03spatial_dropout2d_11/strided_slice_1/stack:output:05spatial_dropout2d_11/strided_slice_1/stack_1:output:05spatial_dropout2d_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$spatial_dropout2d_11/strided_slice_1?
"spatial_dropout2d_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"spatial_dropout2d_11/dropout/Const?
 spatial_dropout2d_11/dropout/MulMul!max_pooling2d_11/MaxPool:output:0+spatial_dropout2d_11/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2"
 spatial_dropout2d_11/dropout/Mul?
3spatial_dropout2d_11/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3spatial_dropout2d_11/dropout/random_uniform/shape/1?
3spatial_dropout2d_11/dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :25
3spatial_dropout2d_11/dropout/random_uniform/shape/2?
1spatial_dropout2d_11/dropout/random_uniform/shapePack+spatial_dropout2d_11/strided_slice:output:0<spatial_dropout2d_11/dropout/random_uniform/shape/1:output:0<spatial_dropout2d_11/dropout/random_uniform/shape/2:output:0-spatial_dropout2d_11/strided_slice_1:output:0*
N*
T0*
_output_shapes
:23
1spatial_dropout2d_11/dropout/random_uniform/shape?
9spatial_dropout2d_11/dropout/random_uniform/RandomUniformRandomUniform:spatial_dropout2d_11/dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02;
9spatial_dropout2d_11/dropout/random_uniform/RandomUniform?
+spatial_dropout2d_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+spatial_dropout2d_11/dropout/GreaterEqual/y?
)spatial_dropout2d_11/dropout/GreaterEqualGreaterEqualBspatial_dropout2d_11/dropout/random_uniform/RandomUniform:output:04spatial_dropout2d_11/dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2+
)spatial_dropout2d_11/dropout/GreaterEqual?
!spatial_dropout2d_11/dropout/CastCast-spatial_dropout2d_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2#
!spatial_dropout2d_11/dropout/Cast?
"spatial_dropout2d_11/dropout/Mul_1Mul$spatial_dropout2d_11/dropout/Mul:z:0%spatial_dropout2d_11/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2$
"spatial_dropout2d_11/dropout/Mul_1s
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"??????  2
flatten_3/Const?
flatten_3/ReshapeReshape&spatial_dropout2d_11/dropout/Mul_1:z:0flatten_3/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_3/Reshape?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/dropout/Const?
dropout_3/dropout/MulMuldense_6/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/dropout/Mul_1?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_7/BiasAddy
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_7/Sigmoidn
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_84267

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????HH@:W S
/
_output_shapes
:?????????HH@
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_83146

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
m
4__inference_spatial_dropout2d_10_layer_call_fn_84353

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$$@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_836312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????$$@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
m
4__inference_spatial_dropout2d_10_layer_call_fn_84343

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_832012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
*__inference_classifier_layer_call_fn_84096

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_classifier_layer_call_and_return_conditional_losses_834812
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
O
3__inference_spatial_dropout2d_9_layer_call_fn_84222

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_830682
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
m
4__inference_spatial_dropout2d_11_layer_call_fn_84469

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_835832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_10_layer_call_and_return_conditional_losses_83384

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????HH@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????HH@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????JJ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
E
)__inference_flatten_3_layer_call_fn_84480

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_834372
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_84517

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_83423

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????""?:X T
0
_output_shapes
:?????????""?
 
_user_specified_nameinputs
?N
?	
 __inference__wrapped_model_83037
conv2d_9_inputL
2classifier_conv2d_9_conv2d_readvariableop_resource: A
3classifier_conv2d_9_biasadd_readvariableop_resource: M
3classifier_conv2d_10_conv2d_readvariableop_resource: @B
4classifier_conv2d_10_biasadd_readvariableop_resource:@N
3classifier_conv2d_11_conv2d_readvariableop_resource:@?C
4classifier_conv2d_11_biasadd_readvariableop_resource:	?F
1classifier_dense_6_matmul_readvariableop_resource:???A
2classifier_dense_6_biasadd_readvariableop_resource:	?D
1classifier_dense_7_matmul_readvariableop_resource:	?@
2classifier_dense_7_biasadd_readvariableop_resource:
identity??+classifier/conv2d_10/BiasAdd/ReadVariableOp?*classifier/conv2d_10/Conv2D/ReadVariableOp?+classifier/conv2d_11/BiasAdd/ReadVariableOp?*classifier/conv2d_11/Conv2D/ReadVariableOp?*classifier/conv2d_9/BiasAdd/ReadVariableOp?)classifier/conv2d_9/Conv2D/ReadVariableOp?)classifier/dense_6/BiasAdd/ReadVariableOp?(classifier/dense_6/MatMul/ReadVariableOp?)classifier/dense_7/BiasAdd/ReadVariableOp?(classifier/dense_7/MatMul/ReadVariableOp?
)classifier/conv2d_9/Conv2D/ReadVariableOpReadVariableOp2classifier_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)classifier/conv2d_9/Conv2D/ReadVariableOp?
classifier/conv2d_9/Conv2DConv2Dconv2d_9_input1classifier/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
classifier/conv2d_9/Conv2D?
*classifier/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp3classifier_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*classifier/conv2d_9/BiasAdd/ReadVariableOp?
classifier/conv2d_9/BiasAddBiasAdd#classifier/conv2d_9/Conv2D:output:02classifier/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
classifier/conv2d_9/BiasAdd?
classifier/conv2d_9/ReluRelu$classifier/conv2d_9/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
classifier/conv2d_9/Relu?
"classifier/max_pooling2d_9/MaxPoolMaxPool&classifier/conv2d_9/Relu:activations:0*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2$
"classifier/max_pooling2d_9/MaxPool?
'classifier/spatial_dropout2d_9/IdentityIdentity+classifier/max_pooling2d_9/MaxPool:output:0*
T0*/
_output_shapes
:?????????JJ 2)
'classifier/spatial_dropout2d_9/Identity?
*classifier/conv2d_10/Conv2D/ReadVariableOpReadVariableOp3classifier_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02,
*classifier/conv2d_10/Conv2D/ReadVariableOp?
classifier/conv2d_10/Conv2DConv2D0classifier/spatial_dropout2d_9/Identity:output:02classifier/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@*
paddingVALID*
strides
2
classifier/conv2d_10/Conv2D?
+classifier/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp4classifier_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+classifier/conv2d_10/BiasAdd/ReadVariableOp?
classifier/conv2d_10/BiasAddBiasAdd$classifier/conv2d_10/Conv2D:output:03classifier/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????HH@2
classifier/conv2d_10/BiasAdd?
classifier/conv2d_10/ReluRelu%classifier/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????HH@2
classifier/conv2d_10/Relu?
#classifier/max_pooling2d_10/MaxPoolMaxPool'classifier/conv2d_10/Relu:activations:0*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2%
#classifier/max_pooling2d_10/MaxPool?
(classifier/spatial_dropout2d_10/IdentityIdentity,classifier/max_pooling2d_10/MaxPool:output:0*
T0*/
_output_shapes
:?????????$$@2*
(classifier/spatial_dropout2d_10/Identity?
*classifier/conv2d_11/Conv2D/ReadVariableOpReadVariableOp3classifier_conv2d_11_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02,
*classifier/conv2d_11/Conv2D/ReadVariableOp?
classifier/conv2d_11/Conv2DConv2D1classifier/spatial_dropout2d_10/Identity:output:02classifier/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?*
paddingVALID*
strides
2
classifier/conv2d_11/Conv2D?
+classifier/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp4classifier_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+classifier/conv2d_11/BiasAdd/ReadVariableOp?
classifier/conv2d_11/BiasAddBiasAdd$classifier/conv2d_11/Conv2D:output:03classifier/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????""?2
classifier/conv2d_11/BiasAdd?
classifier/conv2d_11/ReluRelu%classifier/conv2d_11/BiasAdd:output:0*
T0*0
_output_shapes
:?????????""?2
classifier/conv2d_11/Relu?
#classifier/max_pooling2d_11/MaxPoolMaxPool'classifier/conv2d_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#classifier/max_pooling2d_11/MaxPool?
(classifier/spatial_dropout2d_11/IdentityIdentity,classifier/max_pooling2d_11/MaxPool:output:0*
T0*0
_output_shapes
:??????????2*
(classifier/spatial_dropout2d_11/Identity?
classifier/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"??????  2
classifier/flatten_3/Const?
classifier/flatten_3/ReshapeReshape1classifier/spatial_dropout2d_11/Identity:output:0#classifier/flatten_3/Const:output:0*
T0*)
_output_shapes
:???????????2
classifier/flatten_3/Reshape?
(classifier/dense_6/MatMul/ReadVariableOpReadVariableOp1classifier_dense_6_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02*
(classifier/dense_6/MatMul/ReadVariableOp?
classifier/dense_6/MatMulMatMul%classifier/flatten_3/Reshape:output:00classifier/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
classifier/dense_6/MatMul?
)classifier/dense_6/BiasAdd/ReadVariableOpReadVariableOp2classifier_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)classifier/dense_6/BiasAdd/ReadVariableOp?
classifier/dense_6/BiasAddBiasAdd#classifier/dense_6/MatMul:product:01classifier/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
classifier/dense_6/BiasAdd?
classifier/dense_6/ReluRelu#classifier/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
classifier/dense_6/Relu?
classifier/dropout_3/IdentityIdentity%classifier/dense_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
classifier/dropout_3/Identity?
(classifier/dense_7/MatMul/ReadVariableOpReadVariableOp1classifier_dense_7_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(classifier/dense_7/MatMul/ReadVariableOp?
classifier/dense_7/MatMulMatMul&classifier/dropout_3/Identity:output:00classifier/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
classifier/dense_7/MatMul?
)classifier/dense_7/BiasAdd/ReadVariableOpReadVariableOp2classifier_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)classifier/dense_7/BiasAdd/ReadVariableOp?
classifier/dense_7/BiasAddBiasAdd#classifier/dense_7/MatMul:product:01classifier/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
classifier/dense_7/BiasAdd?
classifier/dense_7/SigmoidSigmoid#classifier/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
classifier/dense_7/Sigmoidy
IdentityIdentityclassifier/dense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp,^classifier/conv2d_10/BiasAdd/ReadVariableOp+^classifier/conv2d_10/Conv2D/ReadVariableOp,^classifier/conv2d_11/BiasAdd/ReadVariableOp+^classifier/conv2d_11/Conv2D/ReadVariableOp+^classifier/conv2d_9/BiasAdd/ReadVariableOp*^classifier/conv2d_9/Conv2D/ReadVariableOp*^classifier/dense_6/BiasAdd/ReadVariableOp)^classifier/dense_6/MatMul/ReadVariableOp*^classifier/dense_7/BiasAdd/ReadVariableOp)^classifier/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2Z
+classifier/conv2d_10/BiasAdd/ReadVariableOp+classifier/conv2d_10/BiasAdd/ReadVariableOp2X
*classifier/conv2d_10/Conv2D/ReadVariableOp*classifier/conv2d_10/Conv2D/ReadVariableOp2Z
+classifier/conv2d_11/BiasAdd/ReadVariableOp+classifier/conv2d_11/BiasAdd/ReadVariableOp2X
*classifier/conv2d_11/Conv2D/ReadVariableOp*classifier/conv2d_11/Conv2D/ReadVariableOp2X
*classifier/conv2d_9/BiasAdd/ReadVariableOp*classifier/conv2d_9/BiasAdd/ReadVariableOp2V
)classifier/conv2d_9/Conv2D/ReadVariableOp)classifier/conv2d_9/Conv2D/ReadVariableOp2V
)classifier/dense_6/BiasAdd/ReadVariableOp)classifier/dense_6/BiasAdd/ReadVariableOp2T
(classifier/dense_6/MatMul/ReadVariableOp(classifier/dense_6/MatMul/ReadVariableOp2V
)classifier/dense_7/BiasAdd/ReadVariableOp)classifier/dense_7/BiasAdd/ReadVariableOp2T
(classifier/dense_7/MatMul/ReadVariableOp(classifier/dense_7/MatMul/ReadVariableOp:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv2d_9_input
?
?
B__inference_dense_6_layer_call_and_return_conditional_losses_83450

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_11_layer_call_fn_84388

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_832462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84310

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$$@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_84378

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_9_layer_call_fn_84161

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????JJ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_833652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
B__inference_dense_7_layer_call_and_return_conditional_losses_84538

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_83461

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_83394

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????$$@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????HH@:W S
/
_output_shapes
:?????????HH@
 
_user_specified_nameinputs
?
m
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84189

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
P
4__inference_spatial_dropout2d_11_layer_call_fn_84454

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_832682
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_83365

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????JJ *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
n
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_83631

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????$$@2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$$@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$$@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$$@:W S
/
_output_shapes
:?????????$$@
 
_user_specified_nameinputs
?
?
'__inference_dense_7_layer_call_fn_84547

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_834742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
m
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84282

inputs

identity_1}
IdentityIdentityinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity?

Identity_1IdentityIdentity:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_84475

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"??????  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?z
?
!__inference__traced_restore_84748
file_prefix:
 assignvariableop_conv2d_9_kernel: .
 assignvariableop_1_conv2d_9_bias: =
#assignvariableop_2_conv2d_10_kernel: @/
!assignvariableop_3_conv2d_10_bias:@>
#assignvariableop_4_conv2d_11_kernel:@?0
!assignvariableop_5_conv2d_11_bias:	?6
!assignvariableop_6_dense_6_kernel:???.
assignvariableop_7_dense_6_bias:	?4
!assignvariableop_8_dense_7_kernel:	?-
assignvariableop_9_dense_7_bias:&
assignvariableop_10_sgd_iter:	 '
assignvariableop_11_sgd_decay: /
%assignvariableop_12_sgd_learning_rate: *
 assignvariableop_13_sgd_momentum: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: J
0assignvariableop_18_sgd_conv2d_9_kernel_momentum: <
.assignvariableop_19_sgd_conv2d_9_bias_momentum: K
1assignvariableop_20_sgd_conv2d_10_kernel_momentum: @=
/assignvariableop_21_sgd_conv2d_10_bias_momentum:@L
1assignvariableop_22_sgd_conv2d_11_kernel_momentum:@?>
/assignvariableop_23_sgd_conv2d_11_bias_momentum:	?D
/assignvariableop_24_sgd_dense_6_kernel_momentum:???<
-assignvariableop_25_sgd_dense_6_bias_momentum:	?B
/assignvariableop_26_sgd_dense_7_kernel_momentum:	?;
-assignvariableop_27_sgd_dense_7_bias_momentum:
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_10_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_10_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_11_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_11_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_7_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_7_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_sgd_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_sgd_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp0assignvariableop_18_sgd_conv2d_9_kernel_momentumIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp.assignvariableop_19_sgd_conv2d_9_bias_momentumIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_sgd_conv2d_10_kernel_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_sgd_conv2d_10_bias_momentumIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp1assignvariableop_22_sgd_conv2d_11_kernel_momentumIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_sgd_conv2d_11_bias_momentumIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp/assignvariableop_24_sgd_dense_6_kernel_momentumIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_sgd_dense_6_bias_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp/assignvariableop_26_sgd_dense_7_kernel_momentumIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp-assignvariableop_27_sgd_dense_7_bias_momentumIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28f
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_29?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
B__inference_dense_7_layer_call_and_return_conditional_losses_83474

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
#__inference_signature_wrapper_83914
conv2d_9_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:???
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_830372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
1
_output_shapes
:???????????
(
_user_specified_nameconv2d_9_input
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_83246

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_dense_6_layer_call_and_return_conditional_losses_84491

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_84505

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
P
4__inference_spatial_dropout2d_11_layer_call_fn_84464

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_834292
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84194

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????JJ 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????JJ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????JJ :W S
/
_output_shapes
:?????????JJ 
 
_user_specified_nameinputs
?
m
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_83101

inputs
identity?D
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul?
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1?
dropout/random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/2?
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0'dropout/random_uniform/shape/2:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shape?
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*8
_output_shapes&
$:"??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*8
_output_shapes&
$:"??????????????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
dropout/Mul_1?
IdentityIdentitydropout/Mul_1:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_83437

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"??????  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_9_inputA
 serving_default_conv2d_9_input:0???????????;
dense_70
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
	variables
regularization_losses
 trainable_variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
(	variables
)regularization_losses
*trainable_variables
+	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
,	variables
-regularization_losses
.trainable_variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

0kernel
1bias
2	variables
3regularization_losses
4trainable_variables
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
6	variables
7regularization_losses
8trainable_variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
:	variables
;regularization_losses
<trainable_variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
>	variables
?regularization_losses
@trainable_variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Bkernel
Cbias
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
H	variables
Iregularization_losses
Jtrainable_variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Lkernel
Mbias
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Riter
	Sdecay
Tlearning_rate
Umomentummomentum?momentum?"momentum?#momentum?0momentum?1momentum?Bmomentum?Cmomentum?Lmomentum?Mmomentum?"
	optimizer
f
0
1
"2
#3
04
15
B6
C7
L8
M9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
"2
#3
04
15
B6
C7
L8
M9"
trackable_list_wrapper
?
Vnon_trainable_variables
	variables
Wlayer_regularization_losses
regularization_losses
Xlayer_metrics

Ylayers
Zmetrics
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
):' 2conv2d_9/kernel
: 2conv2d_9/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
[non_trainable_variables
	variables
\layer_regularization_losses
regularization_losses
]layer_metrics

^layers
_metrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables
	variables
alayer_regularization_losses
regularization_losses
blayer_metrics

clayers
dmetrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables
	variables
flayer_regularization_losses
regularization_losses
glayer_metrics

hlayers
imetrics
 trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_10/kernel
:@2conv2d_10/bias
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
jnon_trainable_variables
$	variables
klayer_regularization_losses
%regularization_losses
llayer_metrics

mlayers
nmetrics
&trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables
(	variables
player_regularization_losses
)regularization_losses
qlayer_metrics

rlayers
smetrics
*trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
tnon_trainable_variables
,	variables
ulayer_regularization_losses
-regularization_losses
vlayer_metrics

wlayers
xmetrics
.trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_11/kernel
:?2conv2d_11/bias
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
ynon_trainable_variables
2	variables
zlayer_regularization_losses
3regularization_losses
{layer_metrics

|layers
}metrics
4trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~non_trainable_variables
6	variables
layer_regularization_losses
7regularization_losses
?layer_metrics
?layers
?metrics
8trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
:	variables
 ?layer_regularization_losses
;regularization_losses
?layer_metrics
?layers
?metrics
<trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
>	variables
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?layers
?metrics
@trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!???2dense_6/kernel
:?2dense_6/bias
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
?non_trainable_variables
D	variables
 ?layer_regularization_losses
Eregularization_losses
?layer_metrics
?layers
?metrics
Ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
H	variables
 ?layer_regularization_losses
Iregularization_losses
?layer_metrics
?layers
?metrics
Jtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_7/kernel
:2dense_7/bias
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
?non_trainable_variables
N	variables
 ?layer_regularization_losses
Oregularization_losses
?layer_metrics
?layers
?metrics
Ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
4:2 2SGD/conv2d_9/kernel/momentum
&:$ 2SGD/conv2d_9/bias/momentum
5:3 @2SGD/conv2d_10/kernel/momentum
':%@2SGD/conv2d_10/bias/momentum
6:4@?2SGD/conv2d_11/kernel/momentum
(:&?2SGD/conv2d_11/bias/momentum
.:,???2SGD/dense_6/kernel/momentum
&:$?2SGD/dense_6/bias/momentum
,:*	?2SGD/dense_7/kernel/momentum
%:#2SGD/dense_7/bias/momentum
?2?
E__inference_classifier_layer_call_and_return_conditional_losses_83962
E__inference_classifier_layer_call_and_return_conditional_losses_84071
E__inference_classifier_layer_call_and_return_conditional_losses_83846
E__inference_classifier_layer_call_and_return_conditional_losses_83883?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_classifier_layer_call_fn_83504
*__inference_classifier_layer_call_fn_84096
*__inference_classifier_layer_call_fn_84121
*__inference_classifier_layer_call_fn_83809?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_83037conv2d_9_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_9_layer_call_and_return_conditional_losses_84132?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_9_layer_call_fn_84141?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_84146
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_84151?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_9_layer_call_fn_84156
/__inference_max_pooling2d_9_layer_call_fn_84161?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84166
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84189
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84194
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84217?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_spatial_dropout2d_9_layer_call_fn_84222
3__inference_spatial_dropout2d_9_layer_call_fn_84227
3__inference_spatial_dropout2d_9_layer_call_fn_84232
3__inference_spatial_dropout2d_9_layer_call_fn_84237?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_10_layer_call_and_return_conditional_losses_84248?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_10_layer_call_fn_84257?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_84262
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_84267?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_10_layer_call_fn_84272
0__inference_max_pooling2d_10_layer_call_fn_84277?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84282
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84305
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84310
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84333?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_spatial_dropout2d_10_layer_call_fn_84338
4__inference_spatial_dropout2d_10_layer_call_fn_84343
4__inference_spatial_dropout2d_10_layer_call_fn_84348
4__inference_spatial_dropout2d_10_layer_call_fn_84353?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_conv2d_11_layer_call_and_return_conditional_losses_84364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_11_layer_call_fn_84373?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_84378
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_84383?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_max_pooling2d_11_layer_call_fn_84388
0__inference_max_pooling2d_11_layer_call_fn_84393?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84398
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84421
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84426
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84449?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_spatial_dropout2d_11_layer_call_fn_84454
4__inference_spatial_dropout2d_11_layer_call_fn_84459
4__inference_spatial_dropout2d_11_layer_call_fn_84464
4__inference_spatial_dropout2d_11_layer_call_fn_84469?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_flatten_3_layer_call_and_return_conditional_losses_84475?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_flatten_3_layer_call_fn_84480?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_6_layer_call_and_return_conditional_losses_84491?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_6_layer_call_fn_84500?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dropout_3_layer_call_and_return_conditional_losses_84505
D__inference_dropout_3_layer_call_and_return_conditional_losses_84517?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_3_layer_call_fn_84522
)__inference_dropout_3_layer_call_fn_84527?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_7_layer_call_and_return_conditional_losses_84538?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_7_layer_call_fn_84547?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_83914conv2d_9_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_83037?
"#01BCLMA?>
7?4
2?/
conv2d_9_input???????????
? "1?.
,
dense_7!?
dense_7??????????
E__inference_classifier_layer_call_and_return_conditional_losses_83846~
"#01BCLMI?F
??<
2?/
conv2d_9_input???????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_classifier_layer_call_and_return_conditional_losses_83883~
"#01BCLMI?F
??<
2?/
conv2d_9_input???????????
p

 
? "%?"
?
0?????????
? ?
E__inference_classifier_layer_call_and_return_conditional_losses_83962v
"#01BCLMA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_classifier_layer_call_and_return_conditional_losses_84071v
"#01BCLMA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
*__inference_classifier_layer_call_fn_83504q
"#01BCLMI?F
??<
2?/
conv2d_9_input???????????
p 

 
? "???????????
*__inference_classifier_layer_call_fn_83809q
"#01BCLMI?F
??<
2?/
conv2d_9_input???????????
p

 
? "???????????
*__inference_classifier_layer_call_fn_84096i
"#01BCLMA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
*__inference_classifier_layer_call_fn_84121i
"#01BCLMA?>
7?4
*?'
inputs???????????
p

 
? "???????????
D__inference_conv2d_10_layer_call_and_return_conditional_losses_84248l"#7?4
-?*
(?%
inputs?????????JJ 
? "-?*
#? 
0?????????HH@
? ?
)__inference_conv2d_10_layer_call_fn_84257_"#7?4
-?*
(?%
inputs?????????JJ 
? " ??????????HH@?
D__inference_conv2d_11_layer_call_and_return_conditional_losses_84364m017?4
-?*
(?%
inputs?????????$$@
? ".?+
$?!
0?????????""?
? ?
)__inference_conv2d_11_layer_call_fn_84373`017?4
-?*
(?%
inputs?????????$$@
? "!??????????""??
C__inference_conv2d_9_layer_call_and_return_conditional_losses_84132p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
(__inference_conv2d_9_layer_call_fn_84141c9?6
/?,
*?'
inputs???????????
? ""???????????? ?
B__inference_dense_6_layer_call_and_return_conditional_losses_84491_BC1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? }
'__inference_dense_6_layer_call_fn_84500RBC1?.
'?$
"?
inputs???????????
? "????????????
B__inference_dense_7_layer_call_and_return_conditional_losses_84538]LM0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? {
'__inference_dense_7_layer_call_fn_84547PLM0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dropout_3_layer_call_and_return_conditional_losses_84505^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_dropout_3_layer_call_and_return_conditional_losses_84517^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ~
)__inference_dropout_3_layer_call_fn_84522Q4?1
*?'
!?
inputs??????????
p 
? "???????????~
)__inference_dropout_3_layer_call_fn_84527Q4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_flatten_3_layer_call_and_return_conditional_losses_84475c8?5
.?+
)?&
inputs??????????
? "'?$
?
0???????????
? ?
)__inference_flatten_3_layer_call_fn_84480V8?5
.?+
)?&
inputs??????????
? "?????????????
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_84262?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_84267h7?4
-?*
(?%
inputs?????????HH@
? "-?*
#? 
0?????????$$@
? ?
0__inference_max_pooling2d_10_layer_call_fn_84272?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_10_layer_call_fn_84277[7?4
-?*
(?%
inputs?????????HH@
? " ??????????$$@?
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_84378?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_84383j8?5
.?+
)?&
inputs?????????""?
? ".?+
$?!
0??????????
? ?
0__inference_max_pooling2d_11_layer_call_fn_84388?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_11_layer_call_fn_84393]8?5
.?+
)?&
inputs?????????""?
? "!????????????
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_84146?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_84151j9?6
/?,
*?'
inputs??????????? 
? "-?*
#? 
0?????????JJ 
? ?
/__inference_max_pooling2d_9_layer_call_fn_84156?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
/__inference_max_pooling2d_9_layer_call_fn_84161]9?6
/?,
*?'
inputs??????????? 
? " ??????????JJ ?
#__inference_signature_wrapper_83914?
"#01BCLMS?P
? 
I?F
D
conv2d_9_input2?/
conv2d_9_input???????????"1?.
,
dense_7!?
dense_7??????????
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84282?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? "H?E
>?;
04????????????????????????????????????
? ?
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84305?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? "H?E
>?;
04????????????????????????????????????
? ?
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84310l;?8
1?.
(?%
inputs?????????$$@
p 
? "-?*
#? 
0?????????$$@
? ?
O__inference_spatial_dropout2d_10_layer_call_and_return_conditional_losses_84333l;?8
1?.
(?%
inputs?????????$$@
p
? "-?*
#? 
0?????????$$@
? ?
4__inference_spatial_dropout2d_10_layer_call_fn_84338?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? ";?84?????????????????????????????????????
4__inference_spatial_dropout2d_10_layer_call_fn_84343?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? ";?84?????????????????????????????????????
4__inference_spatial_dropout2d_10_layer_call_fn_84348_;?8
1?.
(?%
inputs?????????$$@
p 
? " ??????????$$@?
4__inference_spatial_dropout2d_10_layer_call_fn_84353_;?8
1?.
(?%
inputs?????????$$@
p
? " ??????????$$@?
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84398?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? "H?E
>?;
04????????????????????????????????????
? ?
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84421?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? "H?E
>?;
04????????????????????????????????????
? ?
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84426n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
O__inference_spatial_dropout2d_11_layer_call_and_return_conditional_losses_84449n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
4__inference_spatial_dropout2d_11_layer_call_fn_84454?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? ";?84?????????????????????????????????????
4__inference_spatial_dropout2d_11_layer_call_fn_84459?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? ";?84?????????????????????????????????????
4__inference_spatial_dropout2d_11_layer_call_fn_84464a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
4__inference_spatial_dropout2d_11_layer_call_fn_84469a<?9
2?/
)?&
inputs??????????
p
? "!????????????
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84166?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84189?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? "H?E
>?;
04????????????????????????????????????
? ?
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84194l;?8
1?.
(?%
inputs?????????JJ 
p 
? "-?*
#? 
0?????????JJ 
? ?
N__inference_spatial_dropout2d_9_layer_call_and_return_conditional_losses_84217l;?8
1?.
(?%
inputs?????????JJ 
p
? "-?*
#? 
0?????????JJ 
? ?
3__inference_spatial_dropout2d_9_layer_call_fn_84222?V?S
L?I
C?@
inputs4????????????????????????????????????
p 
? ";?84?????????????????????????????????????
3__inference_spatial_dropout2d_9_layer_call_fn_84227?V?S
L?I
C?@
inputs4????????????????????????????????????
p
? ";?84?????????????????????????????????????
3__inference_spatial_dropout2d_9_layer_call_fn_84232_;?8
1?.
(?%
inputs?????????JJ 
p 
? " ??????????JJ ?
3__inference_spatial_dropout2d_9_layer_call_fn_84237_;?8
1?.
(?%
inputs?????????JJ 
p
? " ??????????JJ 