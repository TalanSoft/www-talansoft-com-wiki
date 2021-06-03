# EntitySetProperty

Used in conjunction with [Entity/DataTable](./Entity/DataTable) and bound
properties. **EntitySetProperty** allows to set a value for a property
in the data table. Using **EntitySetProperty** will overwrite the
previous property value.

-   **target**: The entity where to set the property.
-   **property**: The name of the property in the targeted DataTable
    that you want to change the value of.
-   **type**: The type of value that will be sent to the DataTable
    property.
-   **start\_expr** : Specifies the expression used to get the value to
    set when the action starts. The value is set to the return value of
    the expression.
-   **end\_expr** : Specifies the expression used to get the value to
    set when the action ends. The value is set to the return value of
    the expression.
-   **finish\_anim** : If checked the property is set to the end value
    when the action ends.

## Interpolation in the action's update

If both **start\_expr** and **end\_expr** are specified the values are
interpolated in the action's Update.

## Examples

`123` sets the value to `123`.

`This + 1` adds one to the current value of the property.

`dt://@beta * 5` sets the value of the property to the value of the
*beta* property times 5.

`dt://Player/@str * 5` sets the value of the property to the value of
the *Player* datatable's *str* property times 4.

## Expression Syntax

There is no operator priority, the equation is executed from left to
right. Brackets ('()' and '\[\]') can be used to change the order of
execution.

### Types

    Float
    Vector2
    Vector3
    Vector4
    Matrix
    String

### Predefined variables

    VarA: Parent event's VarA parameter.
    VarB: Parent event's VarB parameter.
    This: The targeted property's value.
    time: float
    frametime: float
    pi: float
    epsilon: float
    invalid: float

### URLs

`dt://[ENTITY|. (this target)|.. (parent of the target)]/@PropertyName`

### Unary operators:

    -   --> negate
    +   --> positive (leave as it)
    ~   --> Bitwise negate

### Operators

    +   --> Component Addition
    -   --> Component Subtraction
    *   --> Component Multiplication
    /   --> Component Division
    ^   --> Bitwise xor
    |   --> Bitwise or
    &   --> Bitwise and

### Constructors

    123
    123.456
    1e+23
    1e-23
    Vec2(x,y)
    Vec3(x,y,z)
    Vec4(x,y,z,w)
    RGB(x,y,z)
    RGBA(x,y,z,w)
    Quat(x,y,z,w)
    Rect(left,top,width,height)
    Matrix(11,12,13,14,21,22,23,24,31,32,33,34,41,42,43,44)
    "A string"
    'A string'
    `remainder of the expression is a string

## Real Functions

    Sin(x), ASin(x), Cos(x), ACos(x), Tan(x), ATan(x)
    Rad(x), Deg(x)
    Floor(x), Ceil(x)
    Abs(x)
    Sign(x): return 1 if the number is positive, and -1 if it's negative
    Mod(x,y): x % y
    Lerp(a,b,factor)
    Clamp(a,min,max)
    Sat(a): clamp between 0 and 1
    Sqrt(x)
    Min(a,b), Max(a,b), Mid(a,b,c)
    Rand(): return a random value between 0 and 1
    Rand2(rangeMin,rangeMax)
    Pow(x,y)

## Integer functions

    Lshift(x,y), Rshift(x,y)
    Bit(x)

## String functions

    Format(StringFormat,FormatArg0...FormatArgN)

## Vector functions

    Dot2(vec2,vec2), Dot3(vec3,vec3), Dot4(vec4,vec4)
    Len2(vec2), Len3(vec3), Len4(vec4)
    Cross3(vec3,vec3), Cross4(vec4,vec4)
    Normalize2(vec3), Normalize3(vec3), Normalize4(vec3)
    GetX(vec), GetY(vec), GetZ(vec), GetW(vec)
    GetWidth(vec4), GetHeight(vec4): z-x, w-y

## Matrix functions

    MatrixRotationX(rad-angle), MatrixRotationY(rad-angle), MatrixRotationZ(rad-angle)
    MatrixRotationAxis(vec3,rad-angle)
    MatrixRotationYPR(yaw,pitch,roll)
    MatrixTranslation(vec3)
    MatrixScale(vec3)
    MatrixIdentity()
    MatrixInverse(mtx)

    Mul(Float/Vec2/Vec3/Vec4/Matrix,Matrix): Matrix*FloatValue / VecTransformCoord(VectorValue,Matrix) / MatrixValue * Matrix
    Rotate(Vec2/Vec3,Matrix): VecTransformNormal(V,Matrix)

## Quaternion functions

    QuatIdentity()
    QuatBaryCentric(Q1,Q2,Q3,f,g)
    QuatConjugate(Q)
    QuatExp(Q)
    QuatInverse(Q)
    QuatLn(Q)
    QuatMul(Q1,Q2)
    QuatRotationAxis(V,angle)
    QuatRotationX(angle)
    QuatRotationY(angle)
    QuatRotationZ(angle)
    QuatRotationXYZ(angle)
    QuatRotationMatrix(M)
    QuatRotationYPR(yaw,pitch,roll)
    QuatRotationVector(vFrom,vTo)
    QuatSlerp(Q1,Q2,t)
    QuatSquad(Q1,Q2,Q3,Q4,t)
    QuatToAxisAngle(Q)
    QuatToEuler(Q)

## Wave functions

    Inc(BaseValue, Inc per Second) function
    IncWrap(BaseValue, Inc per Second, Max Value - attained; > test used)

    Dec(BaseValue, Dec per Second)
    DecWrap(BaseValue, Dec per Second, Min Value - attained; < test used)

    Step(BaseValue, Increment, Time for increment)
    StepWrap(BaseValue, Increment, Time for increment,
              Max Value - > test used; if 0 value never wrap)

    StepBack(BaseValue, Decrement, Time for decrement)
    StepBackWrap(BaseValue, Decrement, Time for decrement,
                 Min Value - < test used; if 0 value never wrap)

    SinWave(Base,Amplitude,Phase,Frequence)
    CosWave(Base,Amplitude,Phase,Frequence)
    TriangleWave(Base,Amplitude,Phase,Frequence)
    SquareWave(Base,Amplitude,Phase,Frequence)
    SawWave(Base,Amplitude,Phase,Frequence)
    InvSawWave(Base,Amplitude,Phase,Frequence)
