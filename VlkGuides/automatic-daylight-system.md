# Automatic daylight system

We created a daylight system that triggers a light to rotate 360 degrees around your scene, simulating the sun rotation around Earth. A little script is necessary for this complex system.  

First we need to get the time from the device your application is running on.  
We then convert that time into a float value and store it in a **Datatable**.  
For example 18h30 = 18,5.  

The next operation is to divide 360 degrees by 24 hours, which gives us a 15 degree increment per hour.  
lastly, we multiply the float value by 15 to get the adequate angle for the light, depending on the time it is on your device.  

The sunlight is contained in a dummy object onto which the rotation transformation is applied every time the time changes.  

You can add new rules to this by using the Property changed event.  
Copy & paste the snippet below into your scene to test it.  

    Template:Light:Day-Night-System(DataTable)
    ---VLK-BEGIN---
    <VlkSnippet>
    	<Entity classname="DataTable" name="Day-Night-System">
    		<Base group="DataTable" flags="LocalTimeline|LocalStatus|NotifyPropertyChanged" enabled="1"/>
    		<Transform world_matrix="Matrix(-0.258819,-2.36333e-08,0.965926,0,-1.93715e-07,1,0,0,-0.965926,1.76028e-07,-0.258819,0,0,0,0,1)" flags="InheritPositionX|InheritPositionY|InheritPositionZ|InheritRotation"/>
    		<Properties Time="12" Minutes="0" Hours="0" Angle="10"/>
    		<Children>
    			<Entity classname="Dummy" name="Daylight-Target">
    				<Base group="Dummy" flags="" enabled="1"/>
    				<Transform local_matrix="Matrix(1,0,0,0,0,1,0,0,0,0,1,0,1.22465e-16,-1,0,1)" flags="InheritPositionX|InheritPositionY|InheritPositionZ|InheritRotation"/>
    				<Timeline>
    					<Timelines>
    						<Timeline
    							name="Default"
    							playback="Playing"
    							stop_when_reset="0"
    							loop="0"
    							reversed="0"
    							ping_pong_loop="0"
    							speed="1"
    							start_time="0"
    							end_time="10"
    							current_time="0.45011"
    							event_class=""/>
    					</Timelines>
    				</Timeline>
    			</Entity>
    			<Entity classname="Dummy" name="Daylight-Look-At">
    				<Base group="Dummy" flags="" enabled="1"/>
    				<Transform local_matrix="Matrix(1,0,0,0,0,1,0,0,0,0,1,0,1.22465e-16,-1,0,1)" flags="InheritPositionX|InheritPositionY|InheritPositionZ|InheritRotation"/>
    				<Timeline>
    					<Timelines>
    						<Timeline
    							name="Default"
    							playback="Playing"
    							stop_when_reset="0"
    							loop="0"
    							reversed="0"
    							ping_pong_loop="0"
    							speed="1"
    							start_time="0"
    							end_time="10"
    							current_time="0.45011"
    							event_class="">
    							<Action
    								name="AnimMoveTo"
    								desc="AnimMoveTo"
    								start_time="0"
    								end_time="10"
    								enabled="1"
    								target=""
    								dest="Daylight-Target"
    								spring_s="10"
    								spring_e="1"
    								snap_radius="0.001"/>
    						</Timeline>
    					</Timelines>
    				</Timeline>
    			</Entity>
    			<Entity classname="Dummy" name="Daylight-System">
    				<Base group="Dummy" flags="" enabled="1"/>
    				<Transform local_matrix="Matrix(1,1.22465e-16,0,0,0,0,1,0,1.22465e-16,-1,0,0,0,0,0,1)" flags="InheritPositionX|InheritPositionY|InheritPositionZ|InheritRotation"/>
    				<Children>
    					<Entity classname="Primitive" name="Primitive#8F3F">
    						<Base group="primitive" flags="Relative" enabled="1"/>
    						<Transform local_matrix="Matrix(1,0,0,0,0,1,-5.55112e-17,0,0,5.55112e-17,1,0,0,0,0,1)" flags="InheritPositionX|InheritPositionY|InheritPositionZ|InheritRotation"/>
    						<Primitive type="Box" draw="1" physics="1" tess="Vec2(10,10)" mass="0" uv_translate="Vec2(0,0)" uv_scale="Vec2(1,1)" uv_rotate="0"/>
    						<Children>
    							<Entity classname="Light" name="Sun-Light">
    								<Base group="light" flags="Relative" enabled="1"/>
    								<Transform local_matrix="Matrix(0,0.999391,0.0348995,0,-1,-1.52551e-09,4.36848e-08,0,4.37114e-08,-0.0348995,0.999391,0,0,6.6479,-27.0697,0)" flags="InheritPositionX|InheritPositionY|InheritPositionZ|InheritRotation|InheritScale"/>
    								<Light
    									type="Directional"
    									flags="Attenuation|CastShadows|Specular"
    									cosine_bias="-0.1"
    									near_clip_plane="10"
    									far_clip_plane="0"
    									range="5000"
    									spot_inner="1.0472"
    									spot_outer="1.5708"
    									intensity="2"
    									diffuse="Vec3(1,1,1)"
    									specular="Vec3(1,1,1)"
    									shadow_color="Vec3(0.0499247,0.0752094,0.115667)"
    									shadow_res="4096"
    									shadow_bias="-0.77"
    									shadow_blur="1"
    									shadow_fov="0"
    									cookie=""
    									ibl_diffuse="cubemap/CNTTower_probe_128.dds"
    									ibl_specular="cubemap/CNTower/OutputCube.dds"/>
    								<Timeline>
    									<Timelines>
    										<Timeline
    											name="Default"
    											playback="Playing"
    											stop_when_reset="0"
    											loop="0"
    											reversed="0"
    											ping_pong_loop="0"
    											speed="1"
    											start_time="0"
    											end_time="10"
    											current_time="0.45011"
    											event_class=""/>
    									</Timelines>
    								</Timeline>
    							</Entity>
    						</Children>
    						<Materials>
    							<Material name="Default" class="" flags="" blend_mode="NoBlending">
    								<Channels>
    									<Channel type="Opacity" enabled="0" color="Vec4(0,0,0,1)" sampler_index="-1" texture="" texture_flags="eTextureFlags.Default"/>
    								</Channels>
    							</Material>
    						</Materials>
    						<Timeline>
    							<Timelines>
    								<Timeline
    									name="Default"
    									playback="Playing"
    									stop_when_reset="0"
    									loop="0"
    									reversed="0"
    									ping_pong_loop="0"
    									speed="1"
    									start_time="0"
    									end_time="10"
    									current_time="0.45011"
    									event_class=""/>
    							</Timelines>
    						</Timeline>
    					</Entity>
    				</Children>
    				<Timeline>
    					<Timelines>
    						<Timeline
    							name="Default"
    							playback="Playing"
    							stop_when_reset="0"
    							loop="0"
    							reversed="0"
    							ping_pong_loop="0"
    							speed="1"
    							start_time="0"
    							end_time="10"
    							current_time="0.45011"
    							event_class="">
    							<Action name="LookAtEntity" desc="LookAtEntity" start_time="0" end_time="10" enabled="1" target="" look_at="Daylight-Look-At" forward="Vec3(0,0,1)" mask="Vec3(1,1,1)"/>
    						</Timeline>
    					</Timelines>
    				</Timeline>
    			</Entity>
    		</Children>
    		<Timeline>
    			<Timelines>
    				<Timeline
    					name="Default"
    					playback="Playing"
    					stop_when_reset="0"
    					loop="1"
    					reversed="0"
    					ping_pong_loop="0"
    					speed="1"
    					start_time="0"
    					end_time="2"
    					current_time="0.45011"
    					event_class="">
    					<Action
    						name="EntitySetProperty"
    						desc="Get-Hour"
    						start_time="0"
    						end_time="1"
    						enabled="1"
    						target=""
    						property="Hours"
    						type="Float32"
    						start_expr="FormatCurrentTime(&quot;HH&quot;)"
    						end_expr=""
    						finish_anim="0"/>
    					<Action
    						name="EntitySetProperty"
    						desc="Get-Minutes"
    						start_time="0"
    						end_time="1"
    						enabled="1"
    						target=""
    						property="Minutes"
    						type="Float32"
    						start_expr="FormatCurrentTime(&quot;mm&quot;)"
    						end_expr=""
    						finish_anim="0"/>
    					<Action
    						name="EntitySetProperty"
    						desc="Get-Float-Time"
    						start_time="0"
    						end_time="1"
    						enabled="1"
    						target=""
    						property="Time"
    						type="Float32"
    						start_expr="(dt://Day-Night-System/@Minutes) / 60 + dt://Day-Night-System/@Hours)"
    						end_expr=""
    						finish_anim="0"/>
    					<Action
    						name="EntitySetProperty"
    						desc="Set-Angle"
    						start_time="0"
    						end_time="1"
    						enabled="1"
    						target=""
    						property="Angle"
    						type="Int32"
    						start_expr="(dt://Day-Night-System/@Time)  * 15)"
    						end_expr=""
    						finish_anim="0"/>
    				</Timeline>
    				<Timeline
    					name="PropertyChanged"
    					playback="Playing"
    					stop_when_reset="1"
    					loop="0"
    					reversed="0"
    					ping_pong_loop="0"
    					speed="1"
    					start_time="0"
    					end_time="2"
    					current_time="0.466667"
    					event_class="PropertyChanged"
    					Property="Angle"
    					Type="Vec3"
    					Value="0"
    					Compare="Always"
    					TriggerEveryTime="1">
    					<Action
    						name="EntitySetProperty"
    						desc="EntitySetProperty"
    						start_time="0"
    						end_time="1"
    						enabled="1"
    						target="Daylight-Target"
    						property="position"
    						type="Vec3"
    						start_expr="dt://Daylight-System/@position + (Vec3(sin(Rad(dt://Day-Night-System/@Angle)), cos(Rad(dt://Day-Night-System/@Angle)), 0)))*(10000)/ 10)"
    						end_expr=""
    						finish_anim="1"/>
    				</Timeline>
    			</Timelines>
    		</Timeline>
    	</Entity>
    </VlkSnippet>
    ---VLK-END---
