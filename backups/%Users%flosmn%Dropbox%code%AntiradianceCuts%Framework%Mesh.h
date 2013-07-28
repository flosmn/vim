Vim�UnDo� y������KW��d�.}�"���H��nKp�4   +   			            I   H   I   I   G    Qȣ�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             QȝG     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             QȝJ     �          '       �          &    5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             Qȝ]     �         '    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Qȝ_     �         (      #ifndef _MESH_H_5�_�                    (        ����                                                                                                                                                                                                                                                                                                                                                             Qȝf    �   (               �   (            5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Qȝy     �         *      #include <glue/math.hpp>5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             Qȝ{    �         *      #include <glm/math.hpp>5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             Qȝ     �                struct XmlNode;5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             Qȝ    �                 5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        Qȝ�     �   
             		static std::string tag() {   			return "mesh";   		}5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Qȝ�     �   
              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Qȝ�     �                		Mesh() : m_fileName("") {}   		Mesh(XmlNode const& node);       *		void load(std::string const& scenePath);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Qȝ�    �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Qȝ�    �                		std::string m_fileName;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Qȝ�    �                "		std::vector<gl::vec3> m_normals;�                #		std::vector<gl::uvec3> m_indices;�                $		std::vector<gl::vec3> m_positions;�                A		std::vector<gl::vec3> const& getNormals() { return m_normals; }�                B		std::vector<gl::uvec3> const& getIndices() { return m_indices; }�                E		std::vector<gl::vec3> const& getPositions() { return m_positions; }�                +			std::vector<gl::uvec3> const& indices) :�                )			std::vector<gl::vec3> const& normals, �   
             /		Mesh(std::vector<gl::vec3> const& positions, �                #include <glm/glm.hpp>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Qȟ�     �      ?       5�_�                            ����                                                                                                                                                                                                                                                                                                                                      2          V       Qȟ�     �                			{   >				gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_positions);   L				boundBuffer.bufferData(m_mesh->getPositions().size() * sizeof(gl::vec3),   5						m_mesh->getPositions().data(), GL_STATIC_DRAW);   				glGetError();   			}   			if (mesh->hasNormals())   			{   <				gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_normals);   J				boundBuffer.bufferData(m_mesh->getNormals().size() * sizeof(gl::vec3),   3						m_mesh->getNormals().data(), GL_STATIC_DRAW);   				glGetError();   			}   			{   @				m_vao.attachAttribute(m_positions, "position", 3, GL_FLOAT);   =				m_vao.attachAttribute(m_normals, "normals", 3, GL_FLOAT);       N				gl::BoundBuffer boundBuffer(GL_ELEMENT_ARRAY_BUFFER, m_vao.indexBuffer());   K				boundBuffer.bufferData(m_mesh->getIndices().size() * sizeof(gl::uvec3),   3						m_mesh->getIndices().data(), GL_STATIC_DRAW);       )				m_vao.setPrimitiveType(GL_TRIANGLES);   D				m_vao.setElementCount(GLsizei(m_mesh->getIndices().size() * 3));   (				m_vao.setIndexType(GL_UNSIGNED_INT);       				glGetError();   			}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Qȟ�     �         *      			m_indices(indices) {}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Qȟ�     �      -   ,    5�_�                           ����                                                                                                                                                                                                                                                                                                                            5          5          V       Qȟ�     �         G      			m_indices(indices) {5�_�                            ����                                                                                                                                                                                                                                                                                                                                       -           V       Qȟ�     �      .   H      			   			{   >				gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_positions);   L				boundBuffer.bufferData(m_mesh->getPositions().size() * sizeof(gl::vec3),   5						m_mesh->getPositions().data(), GL_STATIC_DRAW);   				glGetError();   			}   			if (mesh->hasNormals())   			{   <				gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_normals);   J				boundBuffer.bufferData(m_mesh->getNormals().size() * sizeof(gl::vec3),   3						m_mesh->getNormals().data(), GL_STATIC_DRAW);   				glGetError();   			}   			{   @				m_vao.attachAttribute(m_positions, "position", 3, GL_FLOAT);   =				m_vao.attachAttribute(m_normals, "normals", 3, GL_FLOAT);       N				gl::BoundBuffer boundBuffer(GL_ELEMENT_ARRAY_BUFFER, m_vao.indexBuffer());   K				boundBuffer.bufferData(m_mesh->getIndices().size() * sizeof(gl::uvec3),   3						m_mesh->getIndices().data(), GL_STATIC_DRAW);       )				m_vao.setPrimitiveType(GL_TRIANGLES);   D				m_vao.setElementCount(GLsizei(m_mesh->getIndices().size() * 3));   (				m_vao.setIndexType(GL_UNSIGNED_INT);       				glGetError();   			}5�_�                           ����                                                                                                                                                                                                                                                                                                                                       -           V       Qȟ�     �                		5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                       ,           V       Qȟ�     �   ,   .   G      			}5�_�                    -       ����                                                                                                                                                                                                                                                                                                                                       ,           V       Qȟ�    �   ,   .   G      		}5�_�                           ����                                                                                                                                                                                                                                                                                                                            -                    V       Qȟ�     �      .   G      	{   		{   =			gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_positions);   K			boundBuffer.bufferData(m_mesh->getPositions().size() * sizeof(gl::vec3),   4					m_mesh->getPositions().data(), GL_STATIC_DRAW);   			glGetError();   		}   		if (mesh->hasNormals())   		{   ;			gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_normals);   I			boundBuffer.bufferData(m_mesh->getNormals().size() * sizeof(gl::vec3),   2					m_mesh->getNormals().data(), GL_STATIC_DRAW);   			glGetError();   		}   		{   ?			m_vao.attachAttribute(m_positions, "position", 3, GL_FLOAT);   <			m_vao.attachAttribute(m_normals, "normals", 3, GL_FLOAT);       M			gl::BoundBuffer boundBuffer(GL_ELEMENT_ARRAY_BUFFER, m_vao.indexBuffer());   J			boundBuffer.bufferData(m_mesh->getIndices().size() * sizeof(gl::uvec3),   2					m_mesh->getIndices().data(), GL_STATIC_DRAW);       (			m_vao.setPrimitiveType(GL_TRIANGLES);   C			m_vao.setElementCount(GLsizei(m_mesh->getIndices().size() * 3));   '			m_vao.setIndexType(GL_UNSIGNED_INT);       			glGetError();   		}   	}5�_�                    A       ����                                                                                                                                                                                                                                                                                                                            -                    V       QȠ     �   @   A          		private:5�_�                    A       ����                                                                                                                                                                                                                                                                                                                            -                    V       QȠ    �   @   C   F      %		std::vector<glm::vec3> m_positions;5�_�                    =       ����                                                                                                                                                                                                                                                                                                                            -                    V       QȠ   	 �   <   =          		std::shared_ptr<Mesh> m_mesh;5�_�                            ����                                                                                                                                                                                                                                                                                                                            -                    V       QȠ     �         F      #include <glmm/glmm.hpp>5�_�      !                      ����                                                                                                                                                                                                                                                                                                                            -                    V       QȠ   
 �         F      #include <glue/glmm.hpp>5�_�       "           !   4        ����                                                                                                                                                                                                                                                                                                                            4           5          V       QȠ/    �   3   4              		}5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                            4           4          V       QȠD     �         D    5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                            7           7          V       QȠE     �                #include <glue/glue.hpp>5�_�   #   %           $   
        ����                                                                                                                                                                                                                                                                                                                            6           6          V       QȠG     �   	      F    5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                            7           7          V       QȠK     �         G    5�_�   %   )           &          ����                                                                                                                                                                                                                                                                                                                            8           8          V       QȠN    �         H      #include <glue/buffer.hpp>5�_�   &   *   '       )          ����                                                                                                                                                                                                                                                                                                                            8           8           V       QȢ     �         H      #include <glue/math.hpp>5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                      
          V       QȢ    �                #include <glue/buffer.hpp>   ##include <glue/vertexattribute.hpp>   #include <glue/vertexarray.hpp>5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ2     �                 5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ3    �                #include <glue/glue.hpp>5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�     �                >				gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_positions);   L				boundBuffer.bufferData(m_mesh->getPositions().size() * sizeof(gl::vec3),   5						m_mesh->getPositions().data(), GL_STATIC_DRAW);   				glGetError();5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�     �         ?      			}5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�     �         ?      			}5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�     �         ?      			}5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�     �         ?      			}5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�     �                			{   			}   			if (mesh->hasNormals())   			{   <				gl::BoundBuffer boundBuffer(GL_ARRAY_BUFFER, m_normals);   J				boundBuffer.bufferData(m_mesh->getNormals().size() * sizeof(gl::vec3),   3						m_mesh->getNormals().data(), GL_STATIC_DRAW);   				glGetError();   			}   			{   @				m_vao.attachAttribute(m_positions, "position", 3, GL_FLOAT);   =				m_vao.attachAttribute(m_normals, "normals", 3, GL_FLOAT);       N				gl::BoundBuffer boundBuffer(GL_ELEMENT_ARRAY_BUFFER, m_vao.indexBuffer());   K				boundBuffer.bufferData(m_mesh->getIndices().size() * sizeof(gl::uvec3),   3						m_mesh->getIndices().data(), GL_STATIC_DRAW);       )				m_vao.setPrimitiveType(GL_TRIANGLES);   D				m_vao.setElementCount(GLsizei(m_mesh->getIndices().size() * 3));   (				m_vao.setIndexType(GL_UNSIGNED_INT);       				glGetError();   			}5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�     �                5		gl::VertexArrayObject const& getVertexArrayObject()   		{   			return m_vao;   		}5�_�   3   5           4           ����                                                                                                                                                                                                                                                                                                                                                V       QȢ�    �                 5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                  V        QȢ�    �                		gl::VertexArrayObject m_vao;   		gl::BufferObject m_positions;   		gl::BufferObject m_normals;5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                  V        QȢ�    �         !       �              5�_�   6   8           7           ����                                                                                                                                                                                                                                                                                                                                                  V        QȢ�     �         "       5�_�   7   9           8           ����                                                                                                                                                                                                                                                                                                                                                  V        QȢ�    �         $       5�_�   8   :           9          ����                                                                                                                                                                                                                                                                                                                                                  V        QȢ�    �         %      		�         $    5�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                                  V        Qȣ    �         &      			�         %    5�_�   :   <           ;      9    ����                                                                                                                                                                                                                                                                                                                                                    V        Qȣ.    �         '      			�         &    5�_�   ;   =           <      r    ����                                                                                                                                                                                                                                                                                                                            !           !           V        Qȣr     �         '    5�_�   <   >           =      7    ����                                                                                                                                                                                                                                                                                                                            "           "           V        Qȣz     �         (      s			m_vertexArray->AddVertexData(0, m_positions.size(), m_positions.size() * sizeof(glm::vec3), m_positions.data());5�_�   =   ?           >      7    ����                                                                                                                                                                                                                                                                                                                            #           #           V        Qȣ�     �         )      s			m_vertexArray->AddVertexData(0, m_positions.size(), m_positions.size() * sizeof(glm::vec3), m_positions.data());5�_�   >   @           ?          ����                                                                                                                                                                                                                                                                                                                            $           $           V        Qȣ�     �         *      A					m_positions.size() * sizeof(glm::vec3), m_positions.data());5�_�   ?   A           @           ����                                                                                                                                                                                                                                                                                                                            $           $           V        Qȣ�     �         *      7			m_vertexArray->AddVertexData(0, m_positions.size(), 5�_�   @   B           A      %    ����                                                                                                                                                                                                                                                                                                                            $           $           V        Qȣ�    �         *      7			m_vertexArray->AddVertexData(1, m_positions.size(), 5�_�   A   C           B          ����                                                                                                                                                                                                                                                                                                                            $           $           V        Qȣ�    �         *      @				m_positions.size() * sizeof(glm::vec3), m_positions.data());5�_�   B   D           C      *    ����                                                                                                                                                                                                                                                                                                                            $           $           V        Qȣ�    �         *      >				m_normals.size() * sizeof(glm::vec3), m_positions.data());5�_�   C   G           D      2    ����                                                                                                                                                                                                                                                                                                                            $           $           V        Qȣ�     �         +      <				m_normals.size() * sizeof(glm::vec3), m_normals.data());    �         +      			�         *    5�_�   D   H   F       G      ;    ����                                                                                                                                                                                                                                                                                                                               4          ;       V   G    Qȣ�    �         +      			�         *    5�_�   G   I           H      4    ����                                                                                                                                                                                                                                                                                                                               4          p       V   G    Qȣ�     �         +      m			m_vertexArray->AddVertexData(1, m_normals.size(), m_normals.size() * sizeof(glm::vec3), m_normals.data());5�_�   H               I      5    ����                                                                                                                                                                                                                                                                                                                               4          p       V   G    Qȣ�     �         *      s			m_vertexArray->AddVertexData(0, m_positions.size(), m_positions.size() * sizeof(glm::vec3), m_positions.data());5�_�   D       E   G   F      ;    ����                                                                                                                                                                                                                                                                                                                               4          ;       V   G    Qȣ�     �         *      G				m_normals.size() * sizeof(glm::vec3), m_normals.data());m_positions5�_�   D           F   E      ;    ����                                                                                                                                                                                                                                                                                                                               4          ;       V   G    Qȣ�     �         *      G				m_normals.size() * sizeof(glm::vec3), m_normals.data());m_positions5�_�   &   (       )   '          ����                                                                                                                                                                                                                                                                                                                            8           8          V       QȠ\     �         H      #include <glue/matbufferh.hpp>5�_�   '               (          ����                                                                                                                                                                                                                                                                                                                            8           8          V       QȠ]     �         H      #include <glue/matbuffeuh.hpp>5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       Qȝ�     �               !		::vector<gl::vec3> m_positions;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             QȝY     �         '   %   #include <string>   #include <vector>   #include <glue/math.hpp>       struct XmlNode;       
class Mesh   {   	public:   		static std::string tag() {   			return "mesh";   		}       /		Mesh(std::vector<gl::vec3> const& positions,    )			std::vector<gl::vec3> const& normals,    +			std::vector<gl::uvec3> const& indices) :   			m_positions(positions),   			m_normals(normals),   			m_indices(indices) {}       		Mesh() : m_fileName("") {}   		Mesh(XmlNode const& node);       *		void load(std::string const& scenePath);       E		std::vector<gl::vec3> const& getPositions() { return m_positions; }   B		std::vector<gl::uvec3> const& getIndices() { return m_indices; }   A		std::vector<gl::vec3> const& getNormals() { return m_normals; }       5		bool hasNormals() { return m_normals.size() != 0; }       		private:   		std::string m_fileName;   $		std::vector<gl::vec3> m_positions;   #		std::vector<gl::uvec3> m_indices;   "		std::vector<gl::vec3> m_normals;   };5��